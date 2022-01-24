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
struct intel_data {int /*<<< orphan*/  flags; } ;
struct hci_uart {int /*<<< orphan*/  hdev; struct intel_data* priv; } ;
struct hci_lpm_pkt {int opcode; int dlen; int /*<<< orphan*/ * data; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
#define  LPM_OP_RESUME_ACK 130 
#define  LPM_OP_SUSPEND_ACK 129 
#define  LPM_OP_TX_NOTIFY 128 
 int /*<<< orphan*/  STATE_LPM_TRANSACTION ; 
 int /*<<< orphan*/  STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_uart* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_lpm_pkt *lpm = (void *)skb->data;
	struct hci_uart *hu = FUNC2(hdev);
	struct intel_data *intel = hu->priv;

	switch (lpm->opcode) {
	case LPM_OP_TX_NOTIFY:
		if (lpm->dlen < 1) {
			FUNC0(hu->hdev, "Invalid LPM notification packet");
			break;
		}
		FUNC3(hdev, lpm->data[0]);
		break;
	case LPM_OP_SUSPEND_ACK:
		FUNC5(STATE_SUSPENDED, &intel->flags);
		if (FUNC6(STATE_LPM_TRANSACTION, &intel->flags))
			FUNC7(&intel->flags, STATE_LPM_TRANSACTION);
		break;
	case LPM_OP_RESUME_ACK:
		FUNC1(STATE_SUSPENDED, &intel->flags);
		if (FUNC6(STATE_LPM_TRANSACTION, &intel->flags))
			FUNC7(&intel->flags, STATE_LPM_TRANSACTION);
		break;
	default:
		FUNC0(hdev, "Unknown LPM opcode (%02x)", lpm->opcode);
		break;
	}

	FUNC4(skb);

	return 0;
}