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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; struct hci_dev* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  err_rx; int /*<<< orphan*/  byte_rx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct btusb_data {scalar_t__ (* recv_bulk ) (struct btusb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_BULK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,...) ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct btusb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	struct hci_dev *hdev = urb->context;
	struct btusb_data *data = FUNC2(hdev);
	int err;

	FUNC0("%s urb %p status %d count %d", hdev->name, urb, urb->status,
	       urb->actual_length);

	if (!FUNC4(HCI_RUNNING, &hdev->flags))
		return;

	if (urb->status == 0) {
		hdev->stat.byte_rx += urb->actual_length;

		if (data->recv_bulk(data, urb->transfer_buffer,
				    urb->actual_length) < 0) {
			FUNC1(hdev, "corrupted ACL packet");
			hdev->stat.err_rx++;
		}
	} else if (urb->status == -ENOENT) {
		/* Avoid suspend failed when usb_kill_urb */
		return;
	}

	if (!FUNC4(BTUSB_BULK_RUNNING, &data->flags))
		return;

	FUNC5(urb, &data->bulk_anchor);
	FUNC6(data->udev);

	err = FUNC7(urb, GFP_ATOMIC);
	if (err < 0) {
		/* -EPERM: urb is being killed;
		 * -ENODEV: device got disconnected
		 */
		if (err != -EPERM && err != -ENODEV)
			FUNC1(hdev, "urb %p failed to resubmit (%d)",
				   urb, -err);
		FUNC8(urb);
	}
}