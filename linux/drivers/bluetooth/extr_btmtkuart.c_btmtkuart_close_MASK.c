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
struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct btmtkuart_dev {TYPE_1__* serdev; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct btmtkuart_dev* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev)
{
	struct btmtkuart_dev *bdev = FUNC1(hdev);
	struct device *dev = &bdev->serdev->dev;

	/* Shutdown the clock and power domain the device requires */
	FUNC0(bdev->clk);
	FUNC3(dev);
	FUNC2(dev);

	FUNC4(bdev->serdev);

	return 0;
}