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
struct hci_uart {struct ag6xx_data* priv; } ;
struct ag6xx_data {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag6xx_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_uart *hu)
{
	struct ag6xx_data *ag6xx = hu->priv;

	FUNC0("hu %p", hu);

	FUNC3(&ag6xx->txq);
	FUNC2(ag6xx->rx_skb);
	FUNC1(ag6xx);

	hu->priv = NULL;
	return 0;
}