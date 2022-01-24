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
struct urb {int transfer_flags; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct btusb_data {int /*<<< orphan*/  isoc_anchor; TYPE_1__* isoc_rx_ep; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int BTUSB_MAX_ISOC_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int URB_FREE_BUFFER ; 
 int URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,struct urb*,int) ; 
 int /*<<< orphan*/  btusb_isoc_complete ; 
 struct btusb_data* FUNC3 (struct hci_dev*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ ,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 

__attribute__((used)) static int FUNC13(struct hci_dev *hdev, gfp_t mem_flags)
{
	struct btusb_data *data = FUNC3(hdev);
	struct urb *urb;
	unsigned char *buf;
	unsigned int pipe;
	int err, size;

	FUNC0("%s", hdev->name);

	if (!data->isoc_rx_ep)
		return -ENODEV;

	urb = FUNC6(BTUSB_MAX_ISOC_FRAMES, mem_flags);
	if (!urb)
		return -ENOMEM;

	size = FUNC5(data->isoc_rx_ep->wMaxPacketSize) *
						BTUSB_MAX_ISOC_FRAMES;

	buf = FUNC4(size, mem_flags);
	if (!buf) {
		FUNC9(urb);
		return -ENOMEM;
	}

	pipe = FUNC10(data->udev, data->isoc_rx_ep->bEndpointAddress);

	FUNC8(urb, data->udev, pipe, buf, size, btusb_isoc_complete,
			 hdev, data->isoc_rx_ep->bInterval);

	urb->transfer_flags = URB_FREE_BUFFER | URB_ISO_ASAP;

	FUNC1(urb, size,
			       FUNC5(data->isoc_rx_ep->wMaxPacketSize));

	FUNC7(urb, &data->isoc_anchor);

	err = FUNC11(urb, mem_flags);
	if (err < 0) {
		if (err != -EPERM && err != -ENODEV)
			FUNC2(hdev, "urb %p submission failed (%d)",
				   urb, -err);
		FUNC12(urb);
	}

	FUNC9(urb);

	return err;
}