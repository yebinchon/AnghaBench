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
struct ti_st {struct hci_dev* hdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hci_dev {int /*<<< orphan*/  send; int /*<<< orphan*/ * flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_UART ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ti_st*) ; 
 struct ti_st* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct ti_st*) ; 
 int /*<<< orphan*/  ti_st_close ; 
 int /*<<< orphan*/  ti_st_open ; 
 int /*<<< orphan*/  ti_st_send_frame ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ti_st *hst;
	struct hci_dev *hdev;
	int err;

	hst = FUNC3(&pdev->dev, sizeof(struct ti_st), GFP_KERNEL);
	if (!hst)
		return -ENOMEM;

	/* Expose "hciX" device to user space */
	hdev = FUNC4();
	if (!hdev)
		return -ENOMEM;

	FUNC0("hdev %p", hdev);

	hst->hdev = hdev;
	hdev->bus = HCI_UART;
	FUNC7(hdev, hst);
	hdev->open = ti_st_open;
	hdev->close = ti_st_close;
	hdev->flush = NULL;
	hdev->send = ti_st_send_frame;

	err = FUNC6(hdev);
	if (err < 0) {
		FUNC1("Can't register HCI device error %d", err);
		FUNC5(hdev);
		return err;
	}

	FUNC0("HCI device registered (hdev %p)", hdev);

	FUNC2(&pdev->dev, hst);
	return 0;
}