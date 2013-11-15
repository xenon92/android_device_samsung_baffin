# Inherit common device configuration
$(call inherit-product, device/samsung/bcm-common/device.mk)

LOCAL_PATH := device/samsung/baffin

# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.capri_ss_baffin:root/fstab.capri_ss_baffin \
	$(LOCAL_PATH)/rootdir/init.capri_ss_baffin.rc:root/init.capri_ss_baffin.rc \
	$(LOCAL_PATH)/rootdir/ueventd.capri_ss_baffin.rc:root/ueventd.capri_ss_baffin.rc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_baffin
PRODUCT_DEVICE := baffin
