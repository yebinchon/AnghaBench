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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct btusb_data {int /*<<< orphan*/  diag_anchor; int /*<<< orphan*/  udev; TYPE_1__* diag_rx_ep; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int HCI_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,struct urb*,int) ; 
 int /*<<< orphan*/  btusb_diag_complete ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 

__attribute__((used)) static int FUNC12(struct hci_dev *hdev, gfp_t mem_flags)
{
	struct btusb_data *data = FUNC2(hdev);
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size = HCI_MAX_FRAME_SIZE;

	FUNC0("%s", hdev->name);

	if (!data->diag_rx_ep)
		return -ENODEV;

	urb = FUNC4(0, mem_flags);
	if (!urb)
		return -ENOMEM;

	buf = FUNC3(size, mem_flags);
	if (!buf) {
		FUNC7(urb);
		return -ENOMEM;
	}

	pipe = FUNC9(data->udev, data->diag_rx_ep->bEndpointAddress);

	FUNC6(urb, data->udev, pipe, buf, size,
			  btusb_diag_complete, hdev);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC8(data->udev);
	FUNC5(urb, &data->diag_anchor);

	err = FUNC10(urb, mem_flags);
	if (err < 0) {
		if (err != -EPERM && err != -ENODEV)
			FUNC1(hdev, "urb %p submission failed (%d)",
				   urb, -err);
		FUNC11(urb);
	}

	FUNC7(urb);

	return err;
}