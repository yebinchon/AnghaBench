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
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int /*<<< orphan*/  func; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int C_COM_DRV_OWN ; 
 int /*<<< orphan*/  C_FW_OWN_REQ_SET ; 
 int /*<<< orphan*/  C_INT_EN_CLR ; 
 int /*<<< orphan*/  MTK_REG_CHLPCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  btmtksdio_drv_own_query ; 
 struct btmtksdio_dev* FUNC1 (struct hci_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct btmtksdio_dev*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev)
{
	struct btmtksdio_dev *bdev = FUNC1(hdev);
	u32 status;
	int err;

	FUNC3(bdev->func);

	/* Disable interrupt */
	FUNC7(bdev->func, C_INT_EN_CLR, MTK_REG_CHLPCR, NULL);

	FUNC6(bdev->func);

	/* Return ownership to the device */
	FUNC7(bdev->func, C_FW_OWN_REQ_SET, MTK_REG_CHLPCR, NULL);

	err = FUNC2(btmtksdio_drv_own_query, bdev, status,
				 !(status & C_COM_DRV_OWN), 2000, 1000000);
	if (err < 0)
		FUNC0(bdev->hdev, "Cannot return ownership to device");

	FUNC4(bdev->func);

	FUNC5(bdev->func);

	return 0;
}