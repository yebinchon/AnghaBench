#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* cur_altsetting; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;
struct firmware {struct usb_device_id const* size; struct usb_interface* data; } ;
struct bfusb_data {struct hci_dev* hdev; int /*<<< orphan*/  completed_q; int /*<<< orphan*/  pending_q; int /*<<< orphan*/  transmit_q; int /*<<< orphan*/ * reassembly; int /*<<< orphan*/  lock; int /*<<< orphan*/  bulk_pkt_size; int /*<<< orphan*/  bulk_out_ep; int /*<<< orphan*/  bulk_in_ep; struct usb_device* udev; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_5__ {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_QUIRK_BROKEN_LOCAL_COMMANDS ; 
 int /*<<< orphan*/  HCI_USB ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfusb_close ; 
 int /*<<< orphan*/  bfusb_flush ; 
 scalar_t__ FUNC3 (struct bfusb_data*,struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  bfusb_open ; 
 int /*<<< orphan*/  bfusb_send_frame ; 
 struct bfusb_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 scalar_t__ FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct bfusb_data*) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct firmware const*) ; 
 scalar_t__ FUNC12 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct bfusb_data*) ; 

__attribute__((used)) static int FUNC17(struct usb_interface *intf, const struct usb_device_id *id)
{
	const struct firmware *firmware;
	struct usb_device *udev = FUNC9(intf);
	struct usb_host_endpoint *bulk_out_ep;
	struct usb_host_endpoint *bulk_in_ep;
	struct hci_dev *hdev;
	struct bfusb_data *data;

	FUNC0("intf %p id %p", intf, id);

	/* Check number of endpoints */
	if (intf->cur_altsetting->desc.bNumEndpoints < 2)
		return -EIO;

	bulk_out_ep = &intf->cur_altsetting->endpoint[0];
	bulk_in_ep  = &intf->cur_altsetting->endpoint[1];

	if (!bulk_out_ep || !bulk_in_ep) {
		FUNC1("Bulk endpoints not found");
		goto done;
	}

	/* Initialize control structure and load firmware */
	data = FUNC4(&intf->dev, sizeof(struct bfusb_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->udev = udev;
	data->bulk_in_ep    = bulk_in_ep->desc.bEndpointAddress;
	data->bulk_out_ep   = bulk_out_ep->desc.bEndpointAddress;
	data->bulk_pkt_size = FUNC10(bulk_out_ep->desc.wMaxPacketSize);

	FUNC13(&data->lock);

	data->reassembly = NULL;

	FUNC15(&data->transmit_q);
	FUNC15(&data->pending_q);
	FUNC15(&data->completed_q);

	if (FUNC12(&firmware, "bfubase.frm", &udev->dev) < 0) {
		FUNC1("Firmware request failed");
		goto done;
	}

	FUNC0("firmware data %p size %zu", firmware->data, firmware->size);

	if (FUNC3(data, firmware->data, firmware->size) < 0) {
		FUNC1("Firmware loading failed");
		goto release;
	}

	FUNC11(firmware);

	/* Initialize and register HCI device */
	hdev = FUNC5();
	if (!hdev) {
		FUNC1("Can't allocate HCI device");
		goto done;
	}

	data->hdev = hdev;

	hdev->bus = HCI_USB;
	FUNC8(hdev, data);
	FUNC2(hdev, &intf->dev);

	hdev->open  = bfusb_open;
	hdev->close = bfusb_close;
	hdev->flush = bfusb_flush;
	hdev->send  = bfusb_send_frame;

	FUNC14(HCI_QUIRK_BROKEN_LOCAL_COMMANDS, &hdev->quirks);

	if (FUNC7(hdev) < 0) {
		FUNC1("Can't register HCI device");
		FUNC6(hdev);
		goto done;
	}

	FUNC16(intf, data);

	return 0;

release:
	FUNC11(firmware);

done:
	return -EIO;
}