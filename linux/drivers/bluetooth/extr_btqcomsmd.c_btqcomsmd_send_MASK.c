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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  byte_tx; int /*<<< orphan*/  cmd_tx; int /*<<< orphan*/  err_tx; int /*<<< orphan*/  acl_tx; } ;
struct hci_dev {TYPE_1__ stat; } ;
struct btqcomsmd {int /*<<< orphan*/  cmd_channel; int /*<<< orphan*/  acl_channel; } ;

/* Variables and functions */
 int EILSEQ ; 
#define  HCI_ACLDATA_PKT 129 
#define  HCI_COMMAND_PKT 128 
 struct btqcomsmd* FUNC0 (struct hci_dev*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btqcomsmd *btq = FUNC0(hdev);
	int ret;

	switch (FUNC1(skb)) {
	case HCI_ACLDATA_PKT:
		ret = FUNC3(btq->acl_channel, skb->data, skb->len);
		if (ret) {
			hdev->stat.err_tx++;
			break;
		}
		hdev->stat.acl_tx++;
		hdev->stat.byte_tx += skb->len;
		break;
	case HCI_COMMAND_PKT:
		ret = FUNC3(btq->cmd_channel, skb->data, skb->len);
		if (ret) {
			hdev->stat.err_tx++;
			break;
		}
		hdev->stat.cmd_tx++;
		hdev->stat.byte_tx += skb->len;
		break;
	default:
		ret = -EILSEQ;
		break;
	}

	if (!ret)
		FUNC2(skb);

	return ret;
}