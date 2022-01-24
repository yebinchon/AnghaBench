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
struct usb_interface {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {scalar_t__ reset_gpio; TYPE_1__* udev; scalar_t__ oob_wake_irq; struct usb_interface* isoc; struct usb_interface* intf; struct usb_interface* diag; struct hci_dev* hdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*) ; 
 int /*<<< orphan*/  btusb_driver ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct btusb_data* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct btusb_data *data = FUNC6(intf);
	struct hci_dev *hdev;

	FUNC0("intf %p", intf);

	if (!data)
		return;

	hdev = data->hdev;
	FUNC7(data->intf, NULL);

	if (data->isoc)
		FUNC7(data->isoc, NULL);

	if (data->diag)
		FUNC7(data->diag, NULL);

	FUNC4(hdev);

	if (intf == data->intf) {
		if (data->isoc)
			FUNC5(&btusb_driver, data->isoc);
		if (data->diag)
			FUNC5(&btusb_driver, data->diag);
	} else if (intf == data->isoc) {
		if (data->diag)
			FUNC5(&btusb_driver, data->diag);
		FUNC5(&btusb_driver, data->intf);
	} else if (intf == data->diag) {
		FUNC5(&btusb_driver, data->intf);
		if (data->isoc)
			FUNC5(&btusb_driver, data->isoc);
	}

	if (data->oob_wake_irq)
		FUNC1(&data->udev->dev, false);

	if (data->reset_gpio)
		FUNC2(data->reset_gpio);

	FUNC3(hdev);
}