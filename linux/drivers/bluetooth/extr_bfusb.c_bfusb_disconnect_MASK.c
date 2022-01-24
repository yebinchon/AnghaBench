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
struct usb_interface {int dummy; } ;
struct hci_dev {int dummy; } ;
struct bfusb_data {struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct bfusb_data* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct bfusb_data *data = FUNC4(intf);
	struct hci_dev *hdev = data->hdev;

	FUNC0("intf %p", intf);

	if (!hdev)
		return;

	FUNC5(intf, NULL);

	FUNC1(hdev);

	FUNC3(hdev);
	FUNC2(hdev);
}