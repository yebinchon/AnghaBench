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
struct qca_data {int /*<<< orphan*/  txq; int /*<<< orphan*/  tx_wait_q; } ;
struct hci_uart {struct qca_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hci_uart *hu)
{
	struct qca_data *qca = hu->priv;

	FUNC0("hu %p qca flush", hu);

	FUNC1(&qca->tx_wait_q);
	FUNC1(&qca->txq);

	return 0;
}