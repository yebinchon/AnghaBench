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
struct qca_serdev {int /*<<< orphan*/  bt_en; int /*<<< orphan*/  btsoc_type; } ;
struct qca_data {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/ * hu; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  wake_retrans_timer; int /*<<< orphan*/  tx_idle_timer; int /*<<< orphan*/  txq; int /*<<< orphan*/  tx_wait_q; } ;
struct hci_uart {struct qca_data* priv; scalar_t__ serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  HCI_IBS_VOTE_STATS_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qca_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_uart*) ; 
 struct qca_serdev* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hci_uart *hu)
{
	struct qca_serdev *qcadev;
	struct qca_data *qca = hu->priv;

	FUNC0("hu %p qca close", hu);

	FUNC9(HCI_IBS_VOTE_STATS_UPDATE, hu);

	FUNC10(&qca->tx_wait_q);
	FUNC10(&qca->txq);
	FUNC1(&qca->tx_idle_timer);
	FUNC1(&qca->wake_retrans_timer);
	FUNC2(qca->workqueue);
	qca->hu = NULL;

	if (hu->serdev) {
		qcadev = FUNC8(hu->serdev);
		if (FUNC6(qcadev->btsoc_type))
			FUNC7(hu);
		else
			FUNC3(qcadev->bt_en, 0);

	}

	FUNC5(qca->rx_skb);

	hu->priv = NULL;

	FUNC4(qca);

	return 0;
}