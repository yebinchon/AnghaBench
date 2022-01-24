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
struct ll_struct {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  txq; int /*<<< orphan*/  tx_wait_q; } ;
struct ll_device {int /*<<< orphan*/  ext_clk; int /*<<< orphan*/  enable_gpio; } ;
struct hci_uart {struct ll_struct* priv; scalar_t__ serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ll_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ll_device* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hci_uart *hu)
{
	struct ll_struct *ll = hu->priv;

	FUNC0("hu %p", hu);

	FUNC6(&ll->tx_wait_q);
	FUNC6(&ll->txq);

	FUNC4(ll->rx_skb);

	if (hu->serdev) {
		struct ll_device *lldev = FUNC5(hu->serdev);

		FUNC2(lldev->enable_gpio, 0);

		FUNC1(lldev->ext_clk);
	}

	hu->priv = NULL;

	FUNC3(ll);

	return 0;
}