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
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  set_diag; int /*<<< orphan*/  send; int /*<<< orphan*/  setup; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  bus; } ;
struct bpa10x_data {struct hci_dev* hdev; int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  udev; } ;
struct TYPE_3__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*,struct usb_device_id const*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_QUIRK_RESET_ON_CLOSE ; 
 int /*<<< orphan*/  HCI_USB ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpa10x_close ; 
 int /*<<< orphan*/  bpa10x_flush ; 
 int /*<<< orphan*/  bpa10x_open ; 
 int /*<<< orphan*/  bpa10x_send_frame ; 
 int /*<<< orphan*/  bpa10x_set_diag ; 
 int /*<<< orphan*/  bpa10x_setup ; 
 struct bpa10x_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct hci_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct bpa10x_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct bpa10x_data*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct bpa10x_data *data;
	struct hci_dev *hdev;
	int err;

	FUNC0("intf %p id %p", intf, id);

	if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
		return -ENODEV;

	data = FUNC2(&intf->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->udev = FUNC8(intf);

	FUNC7(&data->tx_anchor);
	FUNC7(&data->rx_anchor);

	hdev = FUNC3();
	if (!hdev)
		return -ENOMEM;

	hdev->bus = HCI_USB;
	FUNC6(hdev, data);

	data->hdev = hdev;

	FUNC1(hdev, &intf->dev);

	hdev->open     = bpa10x_open;
	hdev->close    = bpa10x_close;
	hdev->flush    = bpa10x_flush;
	hdev->setup    = bpa10x_setup;
	hdev->send     = bpa10x_send_frame;
	hdev->set_diag = bpa10x_set_diag;

	FUNC9(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

	err = FUNC5(hdev);
	if (err < 0) {
		FUNC4(hdev);
		return err;
	}

	FUNC10(intf, data);

	return 0;
}