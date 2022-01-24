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
struct serdev_device {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int /*<<< orphan*/  osc; int /*<<< orphan*/  vcc; struct hci_dev* hdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btmtkuart_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct btmtkuart_dev* FUNC5 (struct serdev_device*) ; 

__attribute__((used)) static void FUNC6(struct serdev_device *serdev)
{
	struct btmtkuart_dev *bdev = FUNC5(serdev);
	struct hci_dev *hdev = bdev->hdev;

	if (FUNC0(bdev)) {
		FUNC4(bdev->vcc);
		FUNC1(bdev->osc);
	}

	FUNC3(hdev);
	FUNC2(hdev);
}