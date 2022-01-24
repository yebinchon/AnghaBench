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
struct qca_serdev {int /*<<< orphan*/  oper_speed; int /*<<< orphan*/  init_speed; int /*<<< orphan*/  bt_en; int /*<<< orphan*/  btsoc_type; } ;
struct qca_data {int /*<<< orphan*/  wake_retrans; int /*<<< orphan*/  tx_idle_delay; int /*<<< orphan*/  tx_idle_timer; int /*<<< orphan*/  wake_retrans_timer; int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  vote_last_jif; int /*<<< orphan*/  rx_ibs_state; int /*<<< orphan*/  tx_ibs_state; int /*<<< orphan*/  drop_ev_comp; struct hci_uart* hu; int /*<<< orphan*/  ws_tx_vote_off; int /*<<< orphan*/  ws_rx_vote_off; int /*<<< orphan*/  ws_awake_device; int /*<<< orphan*/  ws_awake_rx; int /*<<< orphan*/  hci_ibs_lock; int /*<<< orphan*/  tx_wait_q; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct qca_data* priv; int /*<<< orphan*/  oper_speed; int /*<<< orphan*/  init_speed; scalar_t__ serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_IBS_RX_ASLEEP ; 
 int /*<<< orphan*/  HCI_IBS_TX_ASLEEP ; 
 int /*<<< orphan*/  IBS_TX_IDLE_TIMEOUT_MS ; 
 int /*<<< orphan*/  IBS_WAKE_RETRANS_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hci_ibs_tx_idle_timeout ; 
 int /*<<< orphan*/  hci_ibs_wake_retrans_timeout ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (struct qca_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct qca_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  qca_wq_awake_device ; 
 int /*<<< orphan*/  qca_wq_awake_rx ; 
 int /*<<< orphan*/  qca_wq_serial_rx_clock_vote_off ; 
 int /*<<< orphan*/  qca_wq_serial_tx_clock_vote_off ; 
 struct qca_serdev* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct hci_uart *hu)
{
	struct qca_serdev *qcadev;
	struct qca_data *qca;
	int ret;

	FUNC0("hu %p qca_open", hu);

	if (!FUNC6(hu))
		return -EOPNOTSUPP;

	qca = FUNC10(sizeof(struct qca_data), GFP_KERNEL);
	if (!qca)
		return -ENOMEM;

	FUNC15(&qca->txq);
	FUNC15(&qca->tx_wait_q);
	FUNC16(&qca->hci_ibs_lock);
	qca->workqueue = FUNC3("qca_wq", 0);
	if (!qca->workqueue) {
		FUNC1("QCA Workqueue not initialized properly");
		FUNC8(qca);
		return -ENOMEM;
	}

	FUNC2(&qca->ws_awake_rx, qca_wq_awake_rx);
	FUNC2(&qca->ws_awake_device, qca_wq_awake_device);
	FUNC2(&qca->ws_rx_vote_off, qca_wq_serial_rx_clock_vote_off);
	FUNC2(&qca->ws_tx_vote_off, qca_wq_serial_tx_clock_vote_off);

	qca->hu = hu;
	FUNC7(&qca->drop_ev_comp);

	/* Assume we start with both sides asleep -- extra wakes OK */
	qca->tx_ibs_state = HCI_IBS_TX_ASLEEP;
	qca->rx_ibs_state = HCI_IBS_RX_ASLEEP;

	qca->vote_last_jif = jiffies;

	hu->priv = qca;

	if (hu->serdev) {

		qcadev = FUNC14(hu->serdev);
		if (!FUNC12(qcadev->btsoc_type)) {
			FUNC5(qcadev->bt_en, 1);
			/* Controller needs time to bootup. */
			FUNC11(150);
		} else {
			hu->init_speed = qcadev->init_speed;
			hu->oper_speed = qcadev->oper_speed;
			ret = FUNC13(hu, true);
			if (ret) {
				FUNC4(qca->workqueue);
				FUNC9(qca->rx_skb);
				hu->priv = NULL;
				FUNC8(qca);
				return ret;
			}
		}
	}

	FUNC17(&qca->wake_retrans_timer, hci_ibs_wake_retrans_timeout, 0);
	qca->wake_retrans = IBS_WAKE_RETRANS_TIMEOUT_MS;

	FUNC17(&qca->tx_idle_timer, hci_ibs_tx_idle_timeout, 0);
	qca->tx_idle_delay = IBS_TX_IDLE_TIMEOUT_MS;

	FUNC0("HCI_UART_QCA open, tx_idle_delay=%u, wake_retrans=%u",
	       qca->tx_idle_delay, qca->wake_retrans);

	return 0;
}