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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct mrvl_data {int id; int rev; int /*<<< orphan*/  flags; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct hci_mrvl_pkt {int lhs; int rhs; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MRVL_ACK ; 
 int /*<<< orphan*/  MRVL_NAK ; 
 int /*<<< orphan*/  STATE_CHIP_VER_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_uart* FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_mrvl_pkt *pkt = (void *)skb->data;
	struct hci_uart *hu = FUNC3(hdev);
	struct mrvl_data *mrvl = hu->priv;
	u16 version = FUNC5(pkt->lhs);
	int ret = 0;

	if ((pkt->lhs ^ pkt->rhs) != 0xffff) {
		FUNC0(hdev, "Corrupted mrvl header");
		FUNC6(hu, MRVL_NAK);
		ret = -EINVAL;
		goto done;
	}
	FUNC6(hu, MRVL_ACK);

	if (!FUNC8(STATE_CHIP_VER_PENDING, &mrvl->flags)) {
		FUNC0(hdev, "Received unexpected chip version");
		goto done;
	}

	mrvl->id = version;
	mrvl->rev = version >> 8;

	FUNC1(hdev, "Controller id = %x, rev = %x", mrvl->id, mrvl->rev);

	FUNC2(STATE_CHIP_VER_PENDING, &mrvl->flags);
	FUNC7();
	FUNC9(&mrvl->flags, STATE_CHIP_VER_PENDING);

done:
	FUNC4(skb);
	return ret;
}