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
typedef  int u8 ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int /*<<< orphan*/  dev; } ;
struct btmtk_hci_wmt_params {int dlen; int* data; int /*<<< orphan*/ * status; scalar_t__ flag; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_WMT_FUNC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int) ; 
 struct btmtksdio_dev* FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*,struct btmtk_hci_wmt_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev)
{
	struct btmtksdio_dev *bdev = FUNC1(hdev);
	struct btmtk_hci_wmt_params wmt_params;
	u8 param = 0x0;
	int err;

	/* Get back the state to be consistent with the state
	 * in btmtksdio_setup.
	 */
	FUNC4(bdev->dev);

	/* Disable the device */
	wmt_params.op = MTK_WMT_FUNC_CTRL;
	wmt_params.flag = 0;
	wmt_params.dlen = sizeof(param);
	wmt_params.data = &param;
	wmt_params.status = NULL;

	err = FUNC2(hdev, &wmt_params);
	if (err < 0) {
		FUNC0(hdev, "Failed to send wmt func ctrl (%d)", err);
		return err;
	}

	FUNC5(bdev->dev);
	FUNC3(bdev->dev);

	return 0;
}