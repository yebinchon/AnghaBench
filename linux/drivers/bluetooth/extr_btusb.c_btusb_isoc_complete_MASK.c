#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int number_of_packets; int /*<<< orphan*/  status; scalar_t__ transfer_buffer; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  actual_length; struct hci_dev* context; } ;
struct TYPE_4__ {unsigned int byte_rx; int /*<<< orphan*/  err_rx; } ;
struct hci_dev {TYPE_2__ stat; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct btusb_data {int /*<<< orphan*/  isoc_anchor; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {unsigned int offset; unsigned int actual_length; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_ISOC_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,...) ; 
 scalar_t__ FUNC2 (struct btusb_data*,scalar_t__,unsigned int) ; 
 struct btusb_data* FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct hci_dev *hdev = urb->context;
	struct btusb_data *data = FUNC3(hdev);
	int i, err;

	FUNC0("%s urb %p status %d count %d", hdev->name, urb, urb->status,
	       urb->actual_length);

	if (!FUNC4(HCI_RUNNING, &hdev->flags))
		return;

	if (urb->status == 0) {
		for (i = 0; i < urb->number_of_packets; i++) {
			unsigned int offset = urb->iso_frame_desc[i].offset;
			unsigned int length = urb->iso_frame_desc[i].actual_length;

			if (urb->iso_frame_desc[i].status)
				continue;

			hdev->stat.byte_rx += length;

			if (FUNC2(data, urb->transfer_buffer + offset,
					    length) < 0) {
				FUNC1(hdev, "corrupted SCO packet");
				hdev->stat.err_rx++;
			}
		}
	} else if (urb->status == -ENOENT) {
		/* Avoid suspend failed when usb_kill_urb */
		return;
	}

	if (!FUNC4(BTUSB_ISOC_RUNNING, &data->flags))
		return;

	FUNC5(urb, &data->isoc_anchor);

	err = FUNC6(urb, GFP_ATOMIC);
	if (err < 0) {
		/* -EPERM: urb is being killed;
		 * -ENODEV: device got disconnected
		 */
		if (err != -EPERM && err != -ENODEV)
			FUNC1(hdev, "urb %p failed to resubmit (%d)",
				   urb, -err);
		FUNC7(urb);
	}
}