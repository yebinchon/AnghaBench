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
struct sk_buff {int len; } ;
struct nsh {int type; int len; scalar_t__ zero; } ;
struct TYPE_2__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; } ;
struct dtl1_info {int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int EILSEQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 scalar_t__ NSHL ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dtl1_info*) ; 
 struct dtl1_info* FUNC2 (struct hci_dev*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nsh*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct dtl1_info *info = FUNC2(hdev);
	struct sk_buff *s;
	struct nsh nsh;

	switch (FUNC3(skb)) {
	case HCI_COMMAND_PKT:
		hdev->stat.cmd_tx++;
		nsh.type = 0x81;
		break;
	case HCI_ACLDATA_PKT:
		hdev->stat.acl_tx++;
		nsh.type = 0x82;
		break;
	case HCI_SCODATA_PKT:
		hdev->stat.sco_tx++;
		nsh.type = 0x83;
		break;
	default:
		return -EILSEQ;
	}

	nsh.zero = 0;
	nsh.len = skb->len;

	s = FUNC0(NSHL + skb->len + 1, GFP_ATOMIC);
	if (!s)
		return -ENOMEM;

	FUNC11(s, NSHL);
	FUNC6(skb, FUNC8(s, skb->len), skb->len);
	if (skb->len & 0x0001)
		FUNC9(s, 0);	/* PAD */

	/* Prepend skb with Nokia frame header and queue */
	FUNC5(FUNC7(s, NSHL), &nsh, NSHL);
	FUNC10(&(info->txq), s);

	FUNC1(info);

	FUNC4(skb);

	return 0;
}