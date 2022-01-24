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
struct nokia_bt_dev {int initialized; TYPE_1__* serdev; int /*<<< orphan*/  wakeup_bt; int /*<<< orphan*/  reset; int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu)
{
	struct nokia_bt_dev *btdev = hu->priv;
	struct device *dev = &btdev->serdev->dev;

	FUNC0(dev, "close device");

	btdev->initialized = false;

	FUNC4(&btdev->txq);

	FUNC2(btdev->rx_skb);

	/* disable module */
	FUNC1(btdev->reset, 1);
	FUNC1(btdev->wakeup_bt, 0);

	FUNC3(&btdev->serdev->dev);

	return 0;
}