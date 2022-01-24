#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  tci_sleep ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int /*<<< orphan*/  dev; TYPE_1__* data; } ;
struct btmtk_tci_sleep {int mode; scalar_t__ time_compensation; scalar_t__ host_wakeup_pin; void* host_duration; void* duration; } ;
struct btmtk_hci_wmt_params {int flag; int dlen; int* data; int* status; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  param ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  fwname; } ;

/* Variables and functions */
 int BTMTK_WMT_ON_DONE ; 
 int BTMTK_WMT_ON_PROGRESS ; 
 int BTMTK_WMT_PATCH_DONE ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  MTKBTSDIO_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  MTK_WMT_FUNC_CTRL ; 
 int /*<<< orphan*/  MTK_WMT_SEMAPHORE ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct hci_dev*,int,int,struct btmtk_tci_sleep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  btmtksdio_func_query ; 
 void* FUNC5 (int) ; 
 scalar_t__ enable_autosuspend ; 
 struct btmtksdio_dev* FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct hci_dev*,struct btmtk_hci_wmt_params*) ; 
 int FUNC12 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct hci_dev*,int,int,int,int) ; 

__attribute__((used)) static int FUNC20(struct hci_dev *hdev)
{
	struct btmtksdio_dev *bdev = FUNC6(hdev);
	struct btmtk_hci_wmt_params wmt_params;
	ktime_t calltime, delta, rettime;
	struct btmtk_tci_sleep tci_sleep;
	unsigned long long duration;
	struct sk_buff *skb;
	int err, status;
	u8 param = 0x1;

	calltime = FUNC8();

	/* Query whether the firmware is already download */
	wmt_params.op = MTK_WMT_SEMAPHORE;
	wmt_params.flag = 1;
	wmt_params.dlen = 0;
	wmt_params.data = NULL;
	wmt_params.status = &status;

	err = FUNC11(hdev, &wmt_params);
	if (err < 0) {
		FUNC3(hdev, "Failed to query firmware status (%d)", err);
		return err;
	}

	if (status == BTMTK_WMT_PATCH_DONE) {
		FUNC4(hdev, "Firmware already downloaded");
		goto ignore_setup_fw;
	}

	/* Setup a firmware which the device definitely requires */
	err = FUNC12(hdev, bdev->data->fwname);
	if (err < 0)
		return err;

ignore_setup_fw:
	/* Query whether the device is already enabled */
	err = FUNC19(btmtksdio_func_query, hdev, status,
				 status < 0 || status != BTMTK_WMT_ON_PROGRESS,
				 2000, 5000000);
	/* -ETIMEDOUT happens */
	if (err < 0)
		return err;

	/* The other errors happen in btusb_mtk_func_query */
	if (status < 0)
		return status;

	if (status == BTMTK_WMT_ON_DONE) {
		FUNC4(hdev, "function already on");
		goto ignore_func_on;
	}

	/* Enable Bluetooth protocol */
	wmt_params.op = MTK_WMT_FUNC_CTRL;
	wmt_params.flag = 0;
	wmt_params.dlen = sizeof(param);
	wmt_params.data = &param;
	wmt_params.status = NULL;

	err = FUNC11(hdev, &wmt_params);
	if (err < 0) {
		FUNC3(hdev, "Failed to send wmt func ctrl (%d)", err);
		return err;
	}

ignore_func_on:
	/* Apply the low power environment setup */
	tci_sleep.mode = 0x5;
	tci_sleep.duration = FUNC5(0x640);
	tci_sleep.host_duration = FUNC5(0x640);
	tci_sleep.host_wakeup_pin = 0;
	tci_sleep.time_compensation = 0;

	skb = FUNC2(hdev, 0xfc7a, sizeof(tci_sleep), &tci_sleep,
			     HCI_INIT_TIMEOUT);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		FUNC3(hdev, "Failed to apply low power setting (%d)", err);
		return err;
	}
	FUNC7(skb);

	rettime = FUNC8();
	delta = FUNC9(rettime, calltime);
	duration = (unsigned long long)FUNC10(delta) >> 10;

	FUNC17(bdev->dev,
					 MTKBTSDIO_AUTOSUSPEND_DELAY);
	FUNC18(bdev->dev);

	err = FUNC16(bdev->dev);
	if (err < 0)
		return err;

	/* Default forbid runtime auto suspend, that can be allowed by
	 * enable_autosuspend flag or the PM runtime entry under sysfs.
	 */
	FUNC15(bdev->dev);
	FUNC14(bdev->dev);

	if (enable_autosuspend)
		FUNC13(bdev->dev);

	FUNC4(hdev, "Device setup in %llu usecs", duration);

	return 0;
}