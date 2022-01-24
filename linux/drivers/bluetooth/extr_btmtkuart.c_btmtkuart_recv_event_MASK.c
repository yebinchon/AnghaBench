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
struct hci_event_hdr {int evt; } ;
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int /*<<< orphan*/ * evt_skb; int /*<<< orphan*/  tx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTMTKUART_TX_WAIT_VND_EVT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCI_EV_VENDOR ; 
 struct btmtkuart_dev* FUNC0 (struct hci_dev*) ; 
 int FUNC1 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btmtkuart_dev *bdev = FUNC0(hdev);
	struct hci_event_hdr *hdr = (void *)skb->data;
	int err;

	/* Fix up the vendor event id with 0xff for vendor specific instead
	 * of 0xe4 so that event send via monitoring socket can be parsed
	 * properly.
	 */
	if (hdr->evt == 0xe4)
		hdr->evt = HCI_EV_VENDOR;

	/* When someone waits for the WMT event, the skb is being cloned
	 * and being processed the events from there then.
	 */
	if (FUNC6(BTMTKUART_TX_WAIT_VND_EVT, &bdev->tx_state)) {
		bdev->evt_skb = FUNC3(skb, GFP_KERNEL);
		if (!bdev->evt_skb) {
			err = -ENOMEM;
			goto err_out;
		}
	}

	err = FUNC1(hdev, skb);
	if (err < 0)
		goto err_free_skb;

	if (hdr->evt == HCI_EV_VENDOR) {
		if (FUNC5(BTMTKUART_TX_WAIT_VND_EVT,
				       &bdev->tx_state)) {
			/* Barrier to sync with other CPUs */
			FUNC4();
			FUNC7(&bdev->tx_state, BTMTKUART_TX_WAIT_VND_EVT);
		}
	}

	return 0;

err_free_skb:
	FUNC2(bdev->evt_skb);
	bdev->evt_skb = NULL;

err_out:
	return err;
}