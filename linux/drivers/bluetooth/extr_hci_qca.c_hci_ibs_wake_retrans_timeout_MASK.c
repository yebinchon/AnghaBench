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
struct qca_data {int tx_ibs_state; int /*<<< orphan*/  hci_ibs_lock; int /*<<< orphan*/  wake_retrans_timer; int /*<<< orphan*/  wake_retrans; int /*<<< orphan*/  ibs_sent_wakes; struct hci_uart* hu; } ;
struct hci_uart {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  HCI_IBS_TX_ASLEEP 130 
#define  HCI_IBS_TX_AWAKE 129 
#define  HCI_IBS_TX_WAKING 128 
 int /*<<< orphan*/  HCI_IBS_WAKE_IND ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 struct qca_data* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 struct qca_data* qca ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wake_retrans_timer ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct qca_data *qca = FUNC2(qca, t, wake_retrans_timer);
	struct hci_uart *hu = qca->hu;
	unsigned long flags, retrans_delay;
	bool retransmit = false;

	FUNC0("hu %p wake retransmit timeout in %d state",
		hu, qca->tx_ibs_state);

	FUNC7(&qca->hci_ibs_lock,
				 flags, SINGLE_DEPTH_NESTING);

	switch (qca->tx_ibs_state) {
	case HCI_IBS_TX_WAKING:
		/* No WAKE_ACK, retransmit WAKE */
		retransmit = true;
		if (FUNC6(HCI_IBS_WAKE_IND, hu) < 0) {
			FUNC1("Failed to acknowledge device wake up");
			break;
		}
		qca->ibs_sent_wakes++;
		retrans_delay = FUNC5(qca->wake_retrans);
		FUNC4(&qca->wake_retrans_timer, jiffies + retrans_delay);
		break;

	case HCI_IBS_TX_ASLEEP:
	case HCI_IBS_TX_AWAKE:
		/* Fall through */

	default:
		FUNC1("Spurious timeout tx state %d", qca->tx_ibs_state);
		break;
	}

	FUNC8(&qca->hci_ibs_lock, flags);

	if (retransmit)
		FUNC3(hu);
}