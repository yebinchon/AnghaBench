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
struct mrvl_data {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  rawq; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct mrvl_data* priv; scalar_t__ serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (struct mrvl_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu)
{
	struct mrvl_data *mrvl = hu->priv;

	FUNC0("hu %p", hu);

	if (hu->serdev)
		FUNC3(hu->serdev);

	FUNC4(&mrvl->txq);
	FUNC4(&mrvl->rawq);
	FUNC2(mrvl->rx_skb);
	FUNC1(mrvl);

	hu->priv = NULL;
	return 0;
}