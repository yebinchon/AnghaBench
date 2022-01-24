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
struct bcm203x_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  fw_data; int /*<<< orphan*/  urb; int /*<<< orphan*/  work; int /*<<< orphan*/  shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct bcm203x_data* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct bcm203x_data *data = FUNC5(intf);

	FUNC0("intf %p", intf);

	FUNC1(&data->shutdown);
	FUNC2(&data->work);

	FUNC6(data->urb);

	FUNC7(intf, NULL);

	FUNC4(data->urb);
	FUNC3(data->fw_data);
	FUNC3(data->buffer);
}