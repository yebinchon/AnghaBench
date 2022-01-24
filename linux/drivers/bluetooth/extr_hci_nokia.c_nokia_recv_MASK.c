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
struct nokia_bt_dev {int /*<<< orphan*/ * rx_skb; TYPE_1__* serdev; } ;
struct hci_uart {int /*<<< orphan*/  hdev; int /*<<< orphan*/  flags; struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  HCI_UART_REGISTERED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nokia_recv_pkts ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_uart *hu, const void *data, int count)
{
	struct nokia_bt_dev *btdev = hu->priv;
	struct device *dev = &btdev->serdev->dev;
	int err;

	if (!FUNC5(HCI_UART_REGISTERED, &hu->flags))
		return -EUNATCH;

	btdev->rx_skb = FUNC4(hu->hdev, btdev->rx_skb, data, count,
				  nokia_recv_pkts, FUNC0(nokia_recv_pkts));
	if (FUNC1(btdev->rx_skb)) {
		err = FUNC2(btdev->rx_skb);
		FUNC3(dev, "Frame reassembly failed (%d)", err);
		btdev->rx_skb = NULL;
		return err;
	}

	return count;
}