#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct intel_version {int hw_platform; int hw_variant; int fw_variant; } ;
struct intel_boot_params {int limited_cce; int /*<<< orphan*/  otp_bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  quirks; int /*<<< orphan*/  name; } ;
struct firmware {int size; } ;
struct btusb_data {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  fwname ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  BTUSB_BOOTING ; 
 int /*<<< orphan*/  BTUSB_BOOTLOADER ; 
 int /*<<< orphan*/  BTUSB_DOWNLOADING ; 
 int /*<<< orphan*/  BTUSB_FIRMWARE_FAILED ; 
 int /*<<< orphan*/  BTUSB_FIRMWARE_LOADED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EBADF ; 
 int EINTR ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOEXEC ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HCI_QUIRK_INVALID_BDADDR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*,struct firmware const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,char*) ; 
 int FUNC7 (struct hci_dev*,struct intel_boot_params*) ; 
 int FUNC8 (struct hci_dev*,struct intel_version*) ; 
 int FUNC9 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,struct intel_version*) ; 
 int FUNC12 (struct intel_version*,struct intel_boot_params*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btusb_data* FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct firmware const*) ; 
 int FUNC20 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct hci_dev *hdev)
{
	struct btusb_data *data = FUNC14(hdev);
	struct intel_version ver;
	struct intel_boot_params params;
	const struct firmware *fw;
	u32 boot_param;
	char fwname[64];
	ktime_t calltime, delta, rettime;
	unsigned long long duration;
	int err;

	FUNC0("%s", hdev->name);

	/* Set the default boot parameter to 0x0 and it is updated to
	 * SKU specific boot parameter after reading Intel_Write_Boot_Params
	 * command while downloading the firmware.
	 */
	boot_param = 0x00000000;

	calltime = FUNC15();

	/* Read the Intel version information to determine if the device
	 * is in bootloader mode or if it already has operational firmware
	 * loaded.
	 */
	err = FUNC8(hdev, &ver);
	if (err)
		return err;

	/* The hardware platform number has a fixed value of 0x37 and
	 * for now only accept this single value.
	 */
	if (ver.hw_platform != 0x37) {
		FUNC2(hdev, "Unsupported Intel hardware platform (%u)",
			   ver.hw_platform);
		return -EINVAL;
	}

	/* Check for supported iBT hardware variants of this firmware
	 * loading method.
	 *
	 * This check has been put in place to ensure correct forward
	 * compatibility options when newer hardware variants come along.
	 */
	switch (ver.hw_variant) {
	case 0x0b:	/* SfP */
	case 0x0c:	/* WsP */
	case 0x11:	/* JfP */
	case 0x12:	/* ThP */
	case 0x13:	/* HrP */
	case 0x14:	/* CcP */
		break;
	default:
		FUNC2(hdev, "Unsupported Intel hardware variant (%u)",
			   ver.hw_variant);
		return -EINVAL;
	}

	FUNC11(hdev, &ver);

	/* The firmware variant determines if the device is in bootloader
	 * mode or is running operational firmware. The value 0x06 identifies
	 * the bootloader and the value 0x23 identifies the operational
	 * firmware.
	 *
	 * When the operational firmware is already present, then only
	 * the check for valid Bluetooth device address is needed. This
	 * determines if the device will be added as configured or
	 * unconfigured controller.
	 *
	 * It is not possible to use the Secure Boot Parameters in this
	 * case since that command is only available in bootloader mode.
	 */
	if (ver.fw_variant == 0x23) {
		FUNC13(BTUSB_BOOTLOADER, &data->flags);
		FUNC4(hdev);
		return 0;
	}

	/* If the device is not in bootloader mode, then the only possible
	 * choice is to return an error and abort the device initialization.
	 */
	if (ver.fw_variant != 0x06) {
		FUNC2(hdev, "Unsupported Intel firmware variant (%u)",
			   ver.fw_variant);
		return -ENODEV;
	}

	/* Read the secure boot parameters to identify the operating
	 * details of the bootloader.
	 */
	err = FUNC7(hdev, &params);
	if (err)
		return err;

	/* It is required that every single firmware fragment is acknowledged
	 * with a command complete event. If the boot parameters indicate
	 * that this bootloader does not send them, then abort the setup.
	 */
	if (params.limited_cce != 0x00) {
		FUNC2(hdev, "Unsupported Intel firmware loading method (%u)",
			   params.limited_cce);
		return -EINVAL;
	}

	/* If the OTP has no valid Bluetooth device address, then there will
	 * also be no valid address for the operational firmware.
	 */
	if (!FUNC1(&params.otp_bdaddr, BDADDR_ANY)) {
		FUNC3(hdev, "No device address configured");
		FUNC21(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
	}

	/* With this Intel bootloader only the hardware variant and device
	 * revision information are used to select the right firmware for SfP
	 * and WsP.
	 *
	 * The firmware filename is ibt-<hw_variant>-<dev_revid>.sfi.
	 *
	 * Currently the supported hardware variants are:
	 *   11 (0x0b) for iBT3.0 (LnP/SfP)
	 *   12 (0x0c) for iBT3.5 (WsP)
	 *
	 * For ThP/JfP and for future SKU's, the FW name varies based on HW
	 * variant, HW revision and FW revision, as these are dependent on CNVi
	 * and RF Combination.
	 *
	 *   17 (0x11) for iBT3.5 (JfP)
	 *   18 (0x12) for iBT3.5 (ThP)
	 *
	 * The firmware file name for these will be
	 * ibt-<hw_variant>-<hw_revision>-<fw_revision>.sfi.
	 *
	 */
	err = FUNC12(&ver, &params, fwname,
						sizeof(fwname), "sfi");
	if (!err) {
		FUNC2(hdev, "Unsupported Intel firmware naming");
		return -EINVAL;
	}

	err = FUNC20(&fw, fwname, &hdev->dev);
	if (err < 0) {
		FUNC2(hdev, "Failed to load Intel firmware file (%d)", err);
		return err;
	}

	FUNC3(hdev, "Found device firmware: %s", fwname);

	/* Save the DDC file name for later use to apply once the firmware
	 * downloading is done.
	 */
	err = FUNC12(&ver, &params, fwname,
						sizeof(fwname), "ddc");
	if (!err) {
		FUNC2(hdev, "Unsupported Intel firmware naming");
		return -EINVAL;
	}

	if (fw->size < 644) {
		FUNC2(hdev, "Invalid size of firmware file (%zu)",
			   fw->size);
		err = -EBADF;
		goto done;
	}

	FUNC21(BTUSB_DOWNLOADING, &data->flags);

	/* Start firmware downloading and get boot parameter */
	err = FUNC5(hdev, fw, &boot_param);
	if (err < 0)
		goto done;

	FUNC21(BTUSB_FIRMWARE_LOADED, &data->flags);

	FUNC3(hdev, "Waiting for firmware download to complete");

	/* Before switching the device into operational mode and with that
	 * booting the loaded firmware, wait for the bootloader notification
	 * that all fragments have been successfully received.
	 *
	 * When the event processing receives the notification, then the
	 * BTUSB_DOWNLOADING flag will be cleared.
	 *
	 * The firmware loading should not take longer than 5 seconds
	 * and thus just timeout if that happens and fail the setup
	 * of this device.
	 */
	err = FUNC23(&data->flags, BTUSB_DOWNLOADING,
				  TASK_INTERRUPTIBLE,
				  FUNC18(5000));
	if (err == -EINTR) {
		FUNC2(hdev, "Firmware loading interrupted");
		goto done;
	}

	if (err) {
		FUNC2(hdev, "Firmware loading timeout");
		err = -ETIMEDOUT;
		goto done;
	}

	if (FUNC22(BTUSB_FIRMWARE_FAILED, &data->flags)) {
		FUNC2(hdev, "Firmware loading failed");
		err = -ENOEXEC;
		goto done;
	}

	rettime = FUNC15();
	delta = FUNC16(rettime, calltime);
	duration = (unsigned long long) FUNC17(delta) >> 10;

	FUNC3(hdev, "Firmware loaded in %llu usecs", duration);

done:
	FUNC19(fw);

	if (err < 0)
		return err;

	calltime = FUNC15();

	FUNC21(BTUSB_BOOTING, &data->flags);

	err = FUNC9(hdev, boot_param);
	if (err)
		return err;

	/* The bootloader will not indicate when the device is ready. This
	 * is done by the operational firmware sending bootup notification.
	 *
	 * Booting into operational firmware should not take longer than
	 * 1 second. However if that happens, then just fail the setup
	 * since something went wrong.
	 */
	FUNC3(hdev, "Waiting for device to boot");

	err = FUNC23(&data->flags, BTUSB_BOOTING,
				  TASK_INTERRUPTIBLE,
				  FUNC18(1000));

	if (err == -EINTR) {
		FUNC2(hdev, "Device boot interrupted");
		return -EINTR;
	}

	if (err) {
		FUNC2(hdev, "Device boot timeout");
		return -ETIMEDOUT;
	}

	rettime = FUNC15();
	delta = FUNC16(rettime, calltime);
	duration = (unsigned long long) FUNC17(delta) >> 10;

	FUNC3(hdev, "Device booted in %llu usecs", duration);

	FUNC13(BTUSB_BOOTLOADER, &data->flags);

	/* Once the device is running in operational mode, it needs to apply
	 * the device configuration (DDC) parameters.
	 *
	 * The device can work without DDC parameters, so even if it fails
	 * to load the file, no need to fail the setup.
	 */
	FUNC6(hdev, fwname);

	/* Set the event mask for Intel specific vendor events. This enables
	 * a few extra events that are useful during general operation. It
	 * does not enable any debugging related events.
	 *
	 * The device will function correctly without these events enabled
	 * and thus no need to fail the setup.
	 */
	FUNC10(hdev, false);

	return 0;
}