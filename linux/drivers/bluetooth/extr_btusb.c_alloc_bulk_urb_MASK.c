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
struct sk_buff {void* dev; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int /*<<< orphan*/  udev; TYPE_1__* bulk_tx_ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  btusb_tx_complete ; 
 struct btusb_data* FUNC1 (struct hci_dev*) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct urb *FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct btusb_data *data = FUNC1(hdev);
	struct urb *urb;
	unsigned int pipe;

	if (!data->bulk_tx_ep)
		return FUNC0(-ENODEV);

	urb = FUNC2(0, GFP_KERNEL);
	if (!urb)
		return FUNC0(-ENOMEM);

	pipe = FUNC4(data->udev, data->bulk_tx_ep->bEndpointAddress);

	FUNC3(urb, data->udev, pipe,
			  skb->data, skb->len, btusb_tx_complete, skb);

	skb->dev = (void *)hdev;

	return urb;
}