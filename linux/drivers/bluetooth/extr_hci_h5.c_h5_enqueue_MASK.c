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
struct sk_buff {int len; } ;
struct hci_uart {struct h5* priv; } ;
struct h5 {scalar_t__ state; int /*<<< orphan*/  unrel; int /*<<< orphan*/  rel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ H5_ACTIVE ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct hci_uart *hu, struct sk_buff *skb)
{
	struct h5 *h5 = hu->priv;

	if (skb->len > 0xfff) {
		FUNC0("Packet too long (%u bytes)", skb->len);
		FUNC2(skb);
		return 0;
	}

	if (h5->state != H5_ACTIVE) {
		FUNC0("Ignoring HCI data in non-active state");
		FUNC2(skb);
		return 0;
	}

	switch (FUNC1(skb)) {
	case HCI_ACLDATA_PKT:
	case HCI_COMMAND_PKT:
		FUNC3(&h5->rel, skb);
		break;

	case HCI_SCODATA_PKT:
		FUNC3(&h5->unrel, skb);
		break;

	default:
		FUNC0("Unknown packet type %u", FUNC1(skb));
		FUNC2(skb);
		break;
	}

	return 0;
}