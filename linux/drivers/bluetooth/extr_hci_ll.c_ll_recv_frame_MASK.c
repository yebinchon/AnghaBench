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
struct sk_buff {int dummy; } ;
struct ll_struct {int /*<<< orphan*/  hcill_state; } ;
struct hci_uart {struct ll_struct* priv; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  HCILL_GO_TO_SLEEP_ACK 131 
#define  HCILL_GO_TO_SLEEP_IND 130 
#define  HCILL_WAKE_UP_ACK 129 
#define  HCILL_WAKE_UP_IND 128 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,int /*<<< orphan*/ ) ; 
 struct hci_uart* FUNC2 (struct hci_dev*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_uart*) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_uart *hu = FUNC2(hdev);
	struct ll_struct *ll = hu->priv;

	switch (FUNC3(skb)) {
	case HCILL_GO_TO_SLEEP_IND:
		FUNC0("HCILL_GO_TO_SLEEP_IND packet");
		FUNC5(hu);
		break;
	case HCILL_GO_TO_SLEEP_ACK:
		/* shouldn't happen */
		FUNC1(hdev, "received HCILL_GO_TO_SLEEP_ACK in state %ld",
			   ll->hcill_state);
		break;
	case HCILL_WAKE_UP_IND:
		FUNC0("HCILL_WAKE_UP_IND packet");
		FUNC6(hu);
		break;
	case HCILL_WAKE_UP_ACK:
		FUNC0("HCILL_WAKE_UP_ACK packet");
		FUNC7(hu);
		break;
	}

	FUNC4(skb);
	return 0;
}