#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned char const* data; int len; } ;
struct hci_uart {struct h5* priv; } ;
struct TYPE_2__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;
struct h5 {scalar_t__ sleep; scalar_t__ tx_win; int /*<<< orphan*/  flags; TYPE_1__ unack; int /*<<< orphan*/  rel; int /*<<< orphan*/  timer; int /*<<< orphan*/  unrel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ H5_ACK_TIMEOUT ; 
 scalar_t__ H5_AWAKE ; 
 int /*<<< orphan*/  H5_TX_ACK_REQ ; 
 scalar_t__ H5_WAKING_UP ; 
 int /*<<< orphan*/  HCI_3WIRE_ACK_PKT ; 
 int /*<<< orphan*/  HCI_3WIRE_LINK_PKT ; 
 int HZ ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hci_uart*,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct hci_uart *hu)
{
	struct h5 *h5 = hu->priv;
	unsigned long flags;
	struct sk_buff *skb, *nskb;

	if (h5->sleep != H5_AWAKE) {
		const unsigned char wakeup_req[] = { 0x05, 0xfa };

		if (h5->sleep == H5_WAKING_UP)
			return NULL;

		h5->sleep = H5_WAKING_UP;
		FUNC0("Sending wakeup request");

		FUNC6(&h5->timer, jiffies + HZ / 100);
		return FUNC3(hu, HCI_3WIRE_LINK_PKT, wakeup_req, 2);
	}

	skb = FUNC7(&h5->unrel);
	if (skb) {
		nskb = FUNC3(hu, FUNC4(skb),
				      skb->data, skb->len);
		if (nskb) {
			FUNC5(skb);
			return nskb;
		}

		FUNC8(&h5->unrel, skb);
		FUNC1("Could not dequeue pkt because alloc_skb failed");
	}

	FUNC9(&h5->unack.lock, flags, SINGLE_DEPTH_NESTING);

	if (h5->unack.qlen >= h5->tx_win)
		goto unlock;

	skb = FUNC7(&h5->rel);
	if (skb) {
		nskb = FUNC3(hu, FUNC4(skb),
				      skb->data, skb->len);
		if (nskb) {
			FUNC2(&h5->unack, skb);
			FUNC6(&h5->timer, jiffies + H5_ACK_TIMEOUT);
			FUNC10(&h5->unack.lock, flags);
			return nskb;
		}

		FUNC8(&h5->rel, skb);
		FUNC1("Could not dequeue pkt because alloc_skb failed");
	}

unlock:
	FUNC10(&h5->unack.lock, flags);

	if (FUNC11(H5_TX_ACK_REQ, &h5->flags))
		return FUNC3(hu, HCI_3WIRE_ACK_PKT, NULL, 0);

	return NULL;
}