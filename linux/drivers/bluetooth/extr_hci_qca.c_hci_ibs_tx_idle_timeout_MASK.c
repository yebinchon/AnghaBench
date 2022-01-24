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
struct timer_list {int dummy; } ;
struct qca_data {int tx_ibs_state; int /*<<< orphan*/  hci_ibs_lock; int /*<<< orphan*/  ws_tx_vote_off; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  ibs_sent_slps; struct hci_uart* hu; } ;
struct hci_uart {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  HCI_IBS_SLEEP_IND ; 
#define  HCI_IBS_TX_ASLEEP 130 
#define  HCI_IBS_TX_AWAKE 129 
#define  HCI_IBS_TX_WAKING 128 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 struct qca_data* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct qca_data* qca ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_idle_timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct qca_data *qca = FUNC2(qca, t, tx_idle_timer);
	struct hci_uart *hu = qca->hu;
	unsigned long flags;

	FUNC0("hu %p idle timeout in %d state", hu, qca->tx_ibs_state);

	FUNC5(&qca->hci_ibs_lock,
				 flags, SINGLE_DEPTH_NESTING);

	switch (qca->tx_ibs_state) {
	case HCI_IBS_TX_AWAKE:
		/* TX_IDLE, go to SLEEP */
		if (FUNC4(HCI_IBS_SLEEP_IND, hu) < 0) {
			FUNC1("Failed to send SLEEP to device");
			break;
		}
		qca->tx_ibs_state = HCI_IBS_TX_ASLEEP;
		qca->ibs_sent_slps++;
		FUNC3(qca->workqueue, &qca->ws_tx_vote_off);
		break;

	case HCI_IBS_TX_ASLEEP:
	case HCI_IBS_TX_WAKING:
		/* Fall through */

	default:
		FUNC1("Spurious timeout tx state %d", qca->tx_ibs_state);
		break;
	}

	FUNC6(&qca->hci_ibs_lock, flags);
}