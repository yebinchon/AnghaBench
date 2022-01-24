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
struct sk_buff {scalar_t__ data; } ;
struct mrvl_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_len; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct hci_mrvl_pkt {int lhs; int rhs; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MRVL_ACK ; 
 int /*<<< orphan*/  MRVL_NAK ; 
 int /*<<< orphan*/  STATE_FW_REQ_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_uart* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_mrvl_pkt *pkt = (void *)skb->data;
	struct hci_uart *hu = FUNC2(hdev);
	struct mrvl_data *mrvl = hu->priv;
	int ret = 0;

	if ((pkt->lhs ^ pkt->rhs) != 0xffff) {
		FUNC0(hdev, "Corrupted mrvl header");
		FUNC5(hu, MRVL_NAK);
		ret = -EINVAL;
		goto done;
	}
	FUNC5(hu, MRVL_ACK);

	if (!FUNC7(STATE_FW_REQ_PENDING, &mrvl->flags)) {
		FUNC0(hdev, "Received unexpected firmware request");
		ret = -EINVAL;
		goto done;
	}

	mrvl->tx_len = FUNC4(pkt->lhs);

	FUNC1(STATE_FW_REQ_PENDING, &mrvl->flags);
	FUNC6();
	FUNC8(&mrvl->flags, STATE_FW_REQ_PENDING);

done:
	FUNC3(skb);
	return ret;
}