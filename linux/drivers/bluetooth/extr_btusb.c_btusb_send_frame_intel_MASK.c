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
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  name; } ;
struct hci_command_hdr {int /*<<< orphan*/  opcode; } ;
struct btusb_data {int /*<<< orphan*/  flags; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BOOTLOADER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
 int ENODEV ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  SCO_LINK ; 
 struct urb* FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 struct urb* FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 struct urb* FUNC5 (struct hci_dev*,struct sk_buff*) ; 
 int FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct btusb_data* FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct hci_dev*,struct urb*) ; 
 int FUNC12 (struct hci_dev*,struct urb*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btusb_data *data = FUNC7(hdev);
	struct urb *urb;

	FUNC0("%s", hdev->name);

	switch (FUNC8(skb)) {
	case HCI_COMMAND_PKT:
		if (FUNC13(BTUSB_BOOTLOADER, &data->flags)) {
			struct hci_command_hdr *cmd = (void *)skb->data;
			__u16 opcode = FUNC10(cmd->opcode);

			/* When in bootloader mode and the command 0xfc09
			 * is received, it needs to be send down the
			 * bulk endpoint. So allocate a bulk URB instead.
			 */
			if (opcode == 0xfc09)
				urb = FUNC3(hdev, skb);
			else
				urb = FUNC4(hdev, skb);

			/* When the 0xfc01 command is issued to boot into
			 * the operational firmware, it will actually not
			 * send a command complete event. To keep the flow
			 * control working inject that event here.
			 */
			if (opcode == 0xfc01)
				FUNC9(hdev, opcode);
		} else {
			urb = FUNC4(hdev, skb);
		}
		if (FUNC1(urb))
			return FUNC2(urb);

		hdev->stat.cmd_tx++;
		return FUNC11(hdev, urb);

	case HCI_ACLDATA_PKT:
		urb = FUNC3(hdev, skb);
		if (FUNC1(urb))
			return FUNC2(urb);

		hdev->stat.acl_tx++;
		return FUNC11(hdev, urb);

	case HCI_SCODATA_PKT:
		if (FUNC6(hdev, SCO_LINK) < 1)
			return -ENODEV;

		urb = FUNC5(hdev, skb);
		if (FUNC1(urb))
			return FUNC2(urb);

		hdev->stat.sco_tx++;
		return FUNC12(hdev, urb);
	}

	return -EILSEQ;
}