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
struct qca_data {int /*<<< orphan*/  drop_ev_comp; int /*<<< orphan*/  flags; } ;
struct hci_uart {struct qca_data* priv; } ;
struct hci_event_hdr {scalar_t__ evt; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ HCI_EV_VENDOR ; 
 int /*<<< orphan*/  QCA_DROP_VENDOR_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hci_uart* FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_uart *hu = FUNC1(hdev);
	struct qca_data *qca = hu->priv;

	if (FUNC4(QCA_DROP_VENDOR_EVENT, &qca->flags)) {
		struct hci_event_hdr *hdr = (void *)skb->data;

		/* For the WCN3990 the vendor command for a baudrate change
		 * isn't sent as synchronous HCI command, because the
		 * controller sends the corresponding vendor event with the
		 * new baudrate. The event is received and properly decoded
		 * after changing the baudrate of the host port. It needs to
		 * be dropped, otherwise it can be misinterpreted as
		 * response to a later firmware download command (also a
		 * vendor command).
		 */

		if (hdr->evt == HCI_EV_VENDOR)
			FUNC0(&qca->drop_ev_comp);

		FUNC3(skb);

		return 0;
	}

	return FUNC2(hdev, skb);
}