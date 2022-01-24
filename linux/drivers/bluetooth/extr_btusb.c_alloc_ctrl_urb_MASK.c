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
struct usb_ctrlrequest {int /*<<< orphan*/  wLength; scalar_t__ wValue; scalar_t__ wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct urb {int dummy; } ;
struct sk_buff {void* dev; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int /*<<< orphan*/  udev; int /*<<< orphan*/  cmdreq; int /*<<< orphan*/  cmdreq_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btusb_tx_complete ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 struct usb_ctrlrequest* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,unsigned int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct urb *FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btusb_data *data = FUNC2(hdev);
	struct usb_ctrlrequest *dr;
	struct urb *urb;
	unsigned int pipe;

	urb = FUNC4(0, GFP_KERNEL);
	if (!urb)
		return FUNC0(-ENOMEM);

	dr = FUNC3(sizeof(*dr), GFP_KERNEL);
	if (!dr) {
		FUNC6(urb);
		return FUNC0(-ENOMEM);
	}

	dr->bRequestType = data->cmdreq_type;
	dr->bRequest     = data->cmdreq;
	dr->wIndex       = 0;
	dr->wValue       = 0;
	dr->wLength      = FUNC1(skb->len);

	pipe = FUNC7(data->udev, 0x00);

	FUNC5(urb, data->udev, pipe, (void *)dr,
			     skb->data, skb->len, btusb_tx_complete, skb);

	skb->dev = (void *)hdev;

	return urb;
}