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
typedef  int /*<<< orphan*/  const u8 ;
struct sk_buff {int dummy; } ;
struct intel_version {scalar_t__ fw_patch_num; int /*<<< orphan*/  fw_build_yy; int /*<<< orphan*/  fw_build_ww; int /*<<< orphan*/  fw_build_num; int /*<<< orphan*/  fw_revision; int /*<<< orphan*/  fw_variant; int /*<<< orphan*/  hw_revision; int /*<<< orphan*/  hw_variant; int /*<<< orphan*/  hw_platform; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct firmware {int size; int /*<<< orphan*/  const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_OP_RESET ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct hci_dev*,int,int) ; 
 int FUNC9 (struct hci_dev*,struct intel_version*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int) ; 
 struct firmware* FUNC11 (struct hci_dev*,struct intel_version*) ; 
 int FUNC12 (struct hci_dev*,struct firmware const*,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct firmware const*) ; 

__attribute__((used)) static int FUNC15(struct hci_dev *hdev)
{
	struct sk_buff *skb;
	const struct firmware *fw;
	const u8 *fw_ptr;
	int disable_patch, err;
	struct intel_version ver;

	FUNC0("%s", hdev->name);

	/* The controller has a bug with the first HCI command sent to it
	 * returning number of completed commands as zero. This would stall the
	 * command processing in the Bluetooth core.
	 *
	 * As a workaround, send HCI Reset command first which will reset the
	 * number of completed commands and allow normal command processing
	 * from now on.
	 */
	skb = FUNC3(hdev, HCI_OP_RESET, 0, NULL, HCI_INIT_TIMEOUT);
	if (FUNC1(skb)) {
		FUNC4(hdev, "sending initial HCI reset command failed (%ld)",
			   FUNC2(skb));
		return FUNC2(skb);
	}
	FUNC13(skb);

	/* Read Intel specific controller version first to allow selection of
	 * which firmware file to load.
	 *
	 * The returned information are hardware variant and revision plus
	 * firmware variant, revision and build number.
	 */
	err = FUNC9(hdev, &ver);
	if (err)
		return err;

	FUNC5(hdev, "read Intel version: %02x%02x%02x%02x%02x%02x%02x%02x%02x",
		    ver.hw_platform, ver.hw_variant, ver.hw_revision,
		    ver.fw_variant,  ver.fw_revision, ver.fw_build_num,
		    ver.fw_build_ww, ver.fw_build_yy, ver.fw_patch_num);

	/* fw_patch_num indicates the version of patch the device currently
	 * have. If there is no patch data in the device, it is always 0x00.
	 * So, if it is other than 0x00, no need to patch the device again.
	 */
	if (ver.fw_patch_num) {
		FUNC5(hdev, "Intel device is already patched. "
			    "patch num: %02x", ver.fw_patch_num);
		goto complete;
	}

	/* Opens the firmware patch file based on the firmware version read
	 * from the controller. If it fails to open the matching firmware
	 * patch file, it tries to open the default firmware patch file.
	 * If no patch file is found, allow the device to operate without
	 * a patch.
	 */
	fw = FUNC11(hdev, &ver);
	if (!fw)
		goto complete;
	fw_ptr = fw->data;

	/* Enable the manufacturer mode of the controller.
	 * Only while this mode is enabled, the driver can download the
	 * firmware patch data and configuration parameters.
	 */
	err = FUNC7(hdev);
	if (err) {
		FUNC14(fw);
		return err;
	}

	disable_patch = 1;

	/* The firmware data file consists of list of Intel specific HCI
	 * commands and its expected events. The first byte indicates the
	 * type of the message, either HCI command or HCI event.
	 *
	 * It reads the command and its expected event from the firmware file,
	 * and send to the controller. Once __hci_cmd_sync_ev() returns,
	 * the returned event is compared with the event read from the firmware
	 * file and it will continue until all the messages are downloaded to
	 * the controller.
	 *
	 * Once the firmware patching is completed successfully,
	 * the manufacturer mode is disabled with reset and activating the
	 * downloaded patch.
	 *
	 * If the firmware patching fails, the manufacturer mode is
	 * disabled with reset and deactivating the patch.
	 *
	 * If the default patch file is used, no reset is done when disabling
	 * the manufacturer.
	 */
	while (fw->size > fw_ptr - fw->data) {
		int ret;

		ret = FUNC12(hdev, fw, &fw_ptr,
						 &disable_patch);
		if (ret < 0)
			goto exit_mfg_deactivate;
	}

	FUNC14(fw);

	if (disable_patch)
		goto exit_mfg_disable;

	/* Patching completed successfully and disable the manufacturer mode
	 * with reset and activate the downloaded firmware patches.
	 */
	err = FUNC8(hdev, true, true);
	if (err)
		return err;

	FUNC5(hdev, "Intel firmware patch completed and activated");

	goto complete;

exit_mfg_disable:
	/* Disable the manufacturer mode without reset */
	err = FUNC8(hdev, false, false);
	if (err)
		return err;

	FUNC5(hdev, "Intel firmware patch completed");

	goto complete;

exit_mfg_deactivate:
	FUNC14(fw);

	/* Patching failed. Disable the manufacturer mode with reset and
	 * deactivate the downloaded firmware patches.
	 */
	err = FUNC8(hdev, true, false);
	if (err)
		return err;

	FUNC5(hdev, "Intel firmware patch completed and deactivated");

complete:
	/* Set the event mask for Intel specific vendor events. This enables
	 * a few extra events that are useful during general operation.
	 */
	FUNC10(hdev, false);

	FUNC6(hdev);
	return 0;
}