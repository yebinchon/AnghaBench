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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_event_hdr {scalar_t__ evt; } ;
struct hci_ev_cmd_complete {int /*<<< orphan*/  opcode; } ;
struct TYPE_3__ {int sendcmdflag; } ;
struct btmrvl_private {TYPE_2__* adapter; TYPE_1__ btmrvl_dev; } ;
struct TYPE_4__ {int cmd_complete; int /*<<< orphan*/  cmd_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ HCI_EVENT_HDR_SIZE ; 
 scalar_t__ HCI_EV_CMD_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct btmrvl_private *priv, struct sk_buff *skb)
{
	struct hci_event_hdr *hdr = (void *) skb->data;

	if (hdr->evt == HCI_EV_CMD_COMPLETE) {
		struct hci_ev_cmd_complete *ec;
		u16 opcode;

		ec = (void *) (skb->data + HCI_EVENT_HDR_SIZE);
		opcode = FUNC1(ec->opcode);

		if (priv->btmrvl_dev.sendcmdflag) {
			priv->btmrvl_dev.sendcmdflag = false;
			priv->adapter->cmd_complete = true;
			FUNC4(&priv->adapter->cmd_wait_q);

			if (FUNC2(opcode) == 0x3F) {
				FUNC0("vendor event skipped: opcode=%#4.4x",
				       opcode);
				FUNC3(skb);
				return false;
			}
		}
	}

	return true;
}