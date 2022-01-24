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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; struct hci_dev* context; } ;
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct btusb_data {int /*<<< orphan*/  udev; int /*<<< orphan*/  diag_anchor; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_DIAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,struct urb*,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btusb_data* FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct hci_dev *hdev = urb->context;
	struct btusb_data *data = FUNC3(hdev);
	int err;

	FUNC0("%s urb %p status %d count %d", hdev->name, urb, urb->status,
	       urb->actual_length);

	if (urb->status == 0) {
		struct sk_buff *skb;

		skb = FUNC2(urb->actual_length, GFP_ATOMIC);
		if (skb) {
			FUNC5(skb, urb->transfer_buffer,
				     urb->actual_length);
			FUNC4(hdev, skb);
		}
	} else if (urb->status == -ENOENT) {
		/* Avoid suspend failed when usb_kill_urb */
		return;
	}

	if (!FUNC6(BTUSB_DIAG_RUNNING, &data->flags))
		return;

	FUNC7(urb, &data->diag_anchor);
	FUNC8(data->udev);

	err = FUNC9(urb, GFP_ATOMIC);
	if (err < 0) {
		/* -EPERM: urb is being killed;
		 * -ENODEV: device got disconnected
		 */
		if (err != -EPERM && err != -ENODEV)
			FUNC1(hdev, "urb %p failed to resubmit (%d)",
				   urb, -err);
		FUNC10(urb);
	}
}