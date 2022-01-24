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
struct intel_data {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  txq; int /*<<< orphan*/  busy_work; } ;
struct hci_uart {struct intel_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_uart *hu)
{
	struct intel_data *intel = hu->priv;

	FUNC0("hu %p", hu);

	FUNC1(&intel->busy_work);

	FUNC2(hu, false);

	FUNC5(&intel->txq);
	FUNC4(intel->rx_skb);
	FUNC3(intel);

	hu->priv = NULL;
	return 0;
}