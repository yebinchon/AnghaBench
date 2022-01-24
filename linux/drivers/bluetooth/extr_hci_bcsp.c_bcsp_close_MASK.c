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
struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  unrel; int /*<<< orphan*/  rel; int /*<<< orphan*/  unack; int /*<<< orphan*/  tbcsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bcsp_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu)
{
	struct bcsp_struct *bcsp = hu->priv;

	FUNC1(&bcsp->tbcsp);

	hu->priv = NULL;

	FUNC0("hu %p", hu);

	FUNC4(&bcsp->unack);
	FUNC4(&bcsp->rel);
	FUNC4(&bcsp->unrel);

	if (bcsp->rx_skb) {
		FUNC3(bcsp->rx_skb);
		bcsp->rx_skb = NULL;
	}

	FUNC2(bcsp);
	return 0;
}