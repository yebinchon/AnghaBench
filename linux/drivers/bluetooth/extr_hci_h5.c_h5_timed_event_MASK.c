#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sync_req ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hci_uart {TYPE_1__* hdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  qlen; } ;
struct h5 {scalar_t__ state; scalar_t__ sleep; int tx_seq; TYPE_2__ unack; int /*<<< orphan*/  rel; int /*<<< orphan*/  timer; struct hci_uart* hu; } ;
typedef  int /*<<< orphan*/  conf_req ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,...) ; 
 scalar_t__ H5_ACTIVE ; 
 scalar_t__ H5_AWAKE ; 
 scalar_t__ H5_INITIALIZED ; 
 scalar_t__ H5_SLEEPING ; 
 scalar_t__ H5_SYNC_TIMEOUT ; 
 scalar_t__ H5_UNINITIALIZED ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 struct sk_buff* FUNC1 (TYPE_2__*) ; 
 struct h5* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct h5* h5 ; 
 unsigned char FUNC3 (struct h5*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	const unsigned char sync_req[] = { 0x01, 0x7e };
	unsigned char conf_req[3] = { 0x03, 0xfc };
	struct h5 *h5 = FUNC2(h5, t, timer);
	struct hci_uart *hu = h5->hu;
	struct sk_buff *skb;
	unsigned long flags;

	FUNC0("%s", hu->hdev->name);

	if (h5->state == H5_UNINITIALIZED)
		FUNC4(hu, sync_req, sizeof(sync_req));

	if (h5->state == H5_INITIALIZED) {
		conf_req[2] = FUNC3(h5);
		FUNC4(hu, conf_req, sizeof(conf_req));
	}

	if (h5->state != H5_ACTIVE) {
		FUNC6(&h5->timer, jiffies + H5_SYNC_TIMEOUT);
		goto wakeup;
	}

	if (h5->sleep != H5_AWAKE) {
		h5->sleep = H5_SLEEPING;
		goto wakeup;
	}

	FUNC0("hu %p retransmitting %u pkts", hu, h5->unack.qlen);

	FUNC8(&h5->unack.lock, flags, SINGLE_DEPTH_NESTING);

	while ((skb = FUNC1(&h5->unack)) != NULL) {
		h5->tx_seq = (h5->tx_seq - 1) & 0x07;
		FUNC7(&h5->rel, skb);
	}

	FUNC9(&h5->unack.lock, flags);

wakeup:
	FUNC5(hu);
}