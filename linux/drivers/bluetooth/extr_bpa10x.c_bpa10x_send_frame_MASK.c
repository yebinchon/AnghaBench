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
typedef  int u8 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct urb {int /*<<< orphan*/  setup_packet; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; void* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  name; } ;
struct bpa10x_data {int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpa10x_tx_complete ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,struct urb*) ; 
 struct bpa10x_data* FUNC3 (struct hci_dev*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct usb_ctrlrequest* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 struct urb* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*,int /*<<< orphan*/ ,unsigned int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct urb*) ; 

__attribute__((used)) static int FUNC17(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct bpa10x_data *data = FUNC3(hdev);
	struct usb_ctrlrequest *dr;
	struct urb *urb;
	unsigned int pipe;
	int err;

	FUNC0("%s", hdev->name);

	skb->dev = (void *) hdev;

	urb = FUNC8(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;

	/* Prepend skb with frame type */
	*(u8 *)FUNC7(skb, 1) = FUNC4(skb);

	switch (FUNC4(skb)) {
	case HCI_COMMAND_PKT:
		dr = FUNC6(sizeof(*dr), GFP_KERNEL);
		if (!dr) {
			FUNC12(urb);
			return -ENOMEM;
		}

		dr->bRequestType = USB_TYPE_VENDOR;
		dr->bRequest     = 0;
		dr->wIndex       = 0;
		dr->wValue       = 0;
		dr->wLength      = FUNC1(skb->len);

		pipe = FUNC14(data->udev, 0x00);

		FUNC11(urb, data->udev, pipe, (void *) dr,
				skb->data, skb->len, bpa10x_tx_complete, skb);

		hdev->stat.cmd_tx++;
		break;

	case HCI_ACLDATA_PKT:
		pipe = FUNC13(data->udev, 0x02);

		FUNC10(urb, data->udev, pipe,
				skb->data, skb->len, bpa10x_tx_complete, skb);

		hdev->stat.acl_tx++;
		break;

	case HCI_SCODATA_PKT:
		pipe = FUNC13(data->udev, 0x02);

		FUNC10(urb, data->udev, pipe,
				skb->data, skb->len, bpa10x_tx_complete, skb);

		hdev->stat.sco_tx++;
		break;

	default:
		FUNC12(urb);
		return -EILSEQ;
	}

	FUNC9(urb, &data->tx_anchor);

	err = FUNC15(urb, GFP_KERNEL);
	if (err < 0) {
		FUNC2(hdev, "urb %p submission failed", urb);
		FUNC5(urb->setup_packet);
		FUNC16(urb);
	}

	FUNC12(urb);

	return err;
}