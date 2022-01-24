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
struct mrvl_data {int /*<<< orphan*/ * rx_skb; } ;
struct hci_uart {int /*<<< orphan*/  hdev; int /*<<< orphan*/  flags; struct mrvl_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  HCI_UART_REGISTERED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrvl_recv_pkts ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_uart *hu, const void *data, int count)
{
	struct mrvl_data *mrvl = hu->priv;

	if (!FUNC5(HCI_UART_REGISTERED, &hu->flags))
		return -EUNATCH;

	mrvl->rx_skb = FUNC4(hu->hdev, mrvl->rx_skb, data, count,
				    mrvl_recv_pkts,
				    FUNC0(mrvl_recv_pkts));
	if (FUNC1(mrvl->rx_skb)) {
		int err = FUNC2(mrvl->rx_skb);
		FUNC3(hu->hdev, "Frame reassembly failed (%d)", err);
		mrvl->rx_skb = NULL;
		return err;
	}

	return count;
}