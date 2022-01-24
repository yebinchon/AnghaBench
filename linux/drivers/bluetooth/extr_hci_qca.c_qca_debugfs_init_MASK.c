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
typedef  int umode_t ;
struct qca_data {int /*<<< orphan*/  tx_idle_delay; int /*<<< orphan*/  wake_retrans; int /*<<< orphan*/  vote_off_ms; int /*<<< orphan*/  vote_on_ms; int /*<<< orphan*/  votes_off; int /*<<< orphan*/  votes_on; int /*<<< orphan*/  rx_votes_off; int /*<<< orphan*/  rx_votes_on; int /*<<< orphan*/  rx_vote; int /*<<< orphan*/  tx_votes_off; int /*<<< orphan*/  tx_votes_on; int /*<<< orphan*/  tx_vote; int /*<<< orphan*/  ibs_recv_wacks; int /*<<< orphan*/  ibs_recv_wakes; int /*<<< orphan*/  ibs_recv_slps; int /*<<< orphan*/  ibs_sent_wacks; int /*<<< orphan*/  ibs_sent_wakes; int /*<<< orphan*/  ibs_sent_slps; int /*<<< orphan*/  rx_ibs_state; int /*<<< orphan*/  tx_ibs_state; } ;
struct hci_uart {struct qca_data* priv; } ;
struct hci_dev {int /*<<< orphan*/  debugfs; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct hci_uart* FUNC5 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev)
{
	struct hci_uart *hu = FUNC5(hdev);
	struct qca_data *qca = hu->priv;
	struct dentry *ibs_dir;
	umode_t mode;

	if (!hdev->debugfs)
		return;

	ibs_dir = FUNC1("ibs", hdev->debugfs);

	/* read only */
	mode = S_IRUGO;
	FUNC4("tx_ibs_state", mode, ibs_dir, &qca->tx_ibs_state);
	FUNC4("rx_ibs_state", mode, ibs_dir, &qca->rx_ibs_state);
	FUNC3("ibs_sent_sleeps", mode, ibs_dir,
			   &qca->ibs_sent_slps);
	FUNC3("ibs_sent_wakes", mode, ibs_dir,
			   &qca->ibs_sent_wakes);
	FUNC3("ibs_sent_wake_acks", mode, ibs_dir,
			   &qca->ibs_sent_wacks);
	FUNC3("ibs_recv_sleeps", mode, ibs_dir,
			   &qca->ibs_recv_slps);
	FUNC3("ibs_recv_wakes", mode, ibs_dir,
			   &qca->ibs_recv_wakes);
	FUNC3("ibs_recv_wake_acks", mode, ibs_dir,
			   &qca->ibs_recv_wacks);
	FUNC0("tx_vote", mode, ibs_dir, &qca->tx_vote);
	FUNC3("tx_votes_on", mode, ibs_dir, &qca->tx_votes_on);
	FUNC3("tx_votes_off", mode, ibs_dir, &qca->tx_votes_off);
	FUNC0("rx_vote", mode, ibs_dir, &qca->rx_vote);
	FUNC3("rx_votes_on", mode, ibs_dir, &qca->rx_votes_on);
	FUNC3("rx_votes_off", mode, ibs_dir, &qca->rx_votes_off);
	FUNC3("votes_on", mode, ibs_dir, &qca->votes_on);
	FUNC3("votes_off", mode, ibs_dir, &qca->votes_off);
	FUNC2("vote_on_ms", mode, ibs_dir, &qca->vote_on_ms);
	FUNC2("vote_off_ms", mode, ibs_dir, &qca->vote_off_ms);

	/* read/write */
	mode = S_IRUGO | S_IWUSR;
	FUNC2("wake_retrans", mode, ibs_dir, &qca->wake_retrans);
	FUNC2("tx_idle_delay", mode, ibs_dir,
			   &qca->tx_idle_delay);
}