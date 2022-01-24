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
struct hci_uart {int /*<<< orphan*/  hdev; int /*<<< orphan*/  flags; struct bcm_data* priv; } ;
struct bcm_data {TYPE_1__* dev; int /*<<< orphan*/ * rx_skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  HCI_UART_REGISTERED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  bcm_device_lock ; 
 int /*<<< orphan*/  bcm_recv_pkts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct hci_uart *hu, const void *data, int count)
{
	struct bcm_data *bcm = hu->priv;

	if (!FUNC11(HCI_UART_REGISTERED, &hu->flags))
		return -EUNATCH;

	bcm->rx_skb = FUNC5(hu->hdev, bcm->rx_skb, data, count,
				  bcm_recv_pkts, FUNC0(bcm_recv_pkts));
	if (FUNC1(bcm->rx_skb)) {
		int err = FUNC2(bcm->rx_skb);
		FUNC4(hu->hdev, "Frame reassembly failed (%d)", err);
		bcm->rx_skb = NULL;
		return err;
	} else if (!bcm->rx_skb) {
		/* Delay auto-suspend when receiving completed packet */
		FUNC6(&bcm_device_lock);
		if (bcm->dev && FUNC3(bcm->dev)) {
			FUNC8(bcm->dev->dev);
			FUNC9(bcm->dev->dev);
			FUNC10(bcm->dev->dev);
		}
		FUNC7(&bcm_device_lock);
	}

	return count;
}