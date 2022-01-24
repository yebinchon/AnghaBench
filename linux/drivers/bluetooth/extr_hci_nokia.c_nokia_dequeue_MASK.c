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
struct sk_buff {int dummy; } ;
struct nokia_bt_dev {int tx_enabled; int /*<<< orphan*/  wakeup_bt; TYPE_1__* serdev; int /*<<< orphan*/  initialized; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct hci_uart *hu)
{
	struct nokia_bt_dev *btdev = hu->priv;
	struct device *dev = &btdev->serdev->dev;
	struct sk_buff *result = FUNC4(&btdev->txq);

	if (!btdev->initialized)
		return result;

	if (btdev->tx_enabled == !!result)
		return result;

	if (result) {
		FUNC1(dev);
		FUNC0(btdev->wakeup_bt, 1);
	} else {
		FUNC3(btdev->serdev, 0);
		FUNC0(btdev->wakeup_bt, 0);
		FUNC2(dev);
	}

	btdev->tx_enabled = !!result;

	return result;
}