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
struct hci_uart {int /*<<< orphan*/  hdev; struct ath_struct* priv; } ;
struct ath_struct {int /*<<< orphan*/ * rx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ath_recv_pkts ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu, const void *data, int count)
{
	struct ath_struct *ath = hu->priv;

	ath->rx_skb = FUNC4(hu->hdev, ath->rx_skb, data, count,
				  ath_recv_pkts, FUNC0(ath_recv_pkts));
	if (FUNC1(ath->rx_skb)) {
		int err = FUNC2(ath->rx_skb);
		FUNC3(hu->hdev, "Frame reassembly failed (%d)", err);
		ath->rx_skb = NULL;
		return err;
	}

	return count;
}