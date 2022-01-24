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
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {void* dev; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {TYPE_1__* isoc_tx_ep; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_MAX_ISOC_FRAMES ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btusb_isoc_tx_complete ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct urb *FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btusb_data *data = FUNC2(hdev);
	struct urb *urb;
	unsigned int pipe;

	if (!data->isoc_tx_ep)
		return FUNC0(-ENODEV);

	urb = FUNC4(BTUSB_MAX_ISOC_FRAMES, GFP_KERNEL);
	if (!urb)
		return FUNC0(-ENOMEM);

	pipe = FUNC6(data->udev, data->isoc_tx_ep->bEndpointAddress);

	FUNC5(urb, data->udev, pipe,
			 skb->data, skb->len, btusb_isoc_tx_complete,
			 skb, data->isoc_tx_ep->bInterval);

	urb->transfer_flags  = URB_ISO_ASAP;

	FUNC1(urb, skb->len,
			       FUNC3(data->isoc_tx_ep->wMaxPacketSize));

	skb->dev = (void *)hdev;

	return urb;
}