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
struct sdio_func {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {struct hci_dev* hdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct btmtksdio_dev* FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sdio_func *func)
{
	struct btmtksdio_dev *bdev = FUNC3(func);
	struct hci_dev *hdev;

	if (!bdev)
		return;

	/* Be consistent the state in btmtksdio_probe */
	FUNC2(bdev->dev);

	hdev = bdev->hdev;

	FUNC4(func, NULL);
	FUNC1(hdev);
	FUNC0(hdev);
}