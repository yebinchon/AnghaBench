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
struct btusb_data {int /*<<< orphan*/  intr_anchor; TYPE_1__* intr_ep; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,struct urb*,int) ; 
 int /*<<< orphan*/  btusb_intr_complete ; 
 struct btusb_data* FUNC2 (struct hci_dev*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 

__attribute__((used)) static int FUNC12(struct hci_dev *hdev, gfp_t mem_flags)
{
	struct btusb_data *data = FUNC2(hdev);
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size;

	FUNC0("%s", hdev->name);

	if (!data->intr_ep)
		return -ENODEV;

	urb = FUNC5(0, mem_flags);
	if (!urb)
		return -ENOMEM;

	size = FUNC4(data->intr_ep->wMaxPacketSize);

	buf = FUNC3(size, mem_flags);
	if (!buf) {
		FUNC8(urb);
		return -ENOMEM;
	}

	pipe = FUNC9(data->udev, data->intr_ep->bEndpointAddress);

	FUNC7(urb, data->udev, pipe, buf, size,
			 btusb_intr_complete, hdev, data->intr_ep->bInterval);

	urb->transfer_flags |= URB_FREE_BUFFER;

	FUNC6(urb, &data->intr_anchor);

	err = FUNC10(urb, mem_flags);
	if (err < 0) {
		if (err != -EPERM && err != -ENODEV)
			FUNC1(hdev, "urb %p submission failed (%d)",
				   urb, -err);
		FUNC11(urb);
	}

	FUNC8(urb);

	return err;
}