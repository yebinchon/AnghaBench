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
struct qca_data {int rx_ibs_state; int /*<<< orphan*/  hci_ibs_lock; int /*<<< orphan*/  ibs_sent_wacks; int /*<<< orphan*/  ws_awake_rx; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  ibs_recv_wakes; } ;
struct hci_uart {struct qca_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  HCI_IBS_RX_ASLEEP 129 
#define  HCI_IBS_RX_AWAKE 128 
 int /*<<< orphan*/  HCI_IBS_WAKE_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct hci_uart *hu)
{
	unsigned long flags;
	struct qca_data *qca = hu->priv;

	FUNC0("hu %p want to wake up", hu);

	FUNC5(&qca->hci_ibs_lock, flags);

	qca->ibs_recv_wakes++;

	switch (qca->rx_ibs_state) {
	case HCI_IBS_RX_ASLEEP:
		/* Make sure clock is on - we may have turned clock off since
		 * receiving the wake up indicator awake rx clock.
		 */
		FUNC3(qca->workqueue, &qca->ws_awake_rx);
		FUNC6(&qca->hci_ibs_lock, flags);
		return;

	case HCI_IBS_RX_AWAKE:
		/* Always acknowledge device wake up,
		 * sending IBS message doesn't count as TX ON.
		 */
		if (FUNC4(HCI_IBS_WAKE_ACK, hu) < 0) {
			FUNC1("Failed to acknowledge device wake up");
			break;
		}
		qca->ibs_sent_wacks++;
		break;

	default:
		/* Any other state is illegal */
		FUNC1("Received HCI_IBS_WAKE_IND in rx state %d",
		       qca->rx_ibs_state);
		break;
	}

	FUNC6(&qca->hci_ibs_lock, flags);

	/* Actually send the packets */
	FUNC2(hu);
}