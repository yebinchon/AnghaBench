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
struct qca_data {int rx_ibs_state; int /*<<< orphan*/  hci_ibs_lock; int /*<<< orphan*/  ws_rx_vote_off; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  ibs_recv_slps; } ;
struct hci_uart {struct qca_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  HCI_IBS_RX_ASLEEP 129 
#define  HCI_IBS_RX_AWAKE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct hci_uart *hu)
{
	unsigned long flags;
	struct qca_data *qca = hu->priv;

	FUNC0("hu %p want to sleep in %d state", hu, qca->rx_ibs_state);

	FUNC3(&qca->hci_ibs_lock, flags);

	qca->ibs_recv_slps++;

	switch (qca->rx_ibs_state) {
	case HCI_IBS_RX_AWAKE:
		/* Update state */
		qca->rx_ibs_state = HCI_IBS_RX_ASLEEP;
		/* Vote off rx clock under workqueue */
		FUNC2(qca->workqueue, &qca->ws_rx_vote_off);
		break;

	case HCI_IBS_RX_ASLEEP:
		break;

	default:
		/* Any other state is illegal */
		FUNC1("Received HCI_IBS_SLEEP_IND in rx state %d",
		       qca->rx_ibs_state);
		break;
	}

	FUNC4(&qca->hci_ibs_lock, flags);
}