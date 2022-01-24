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
struct TYPE_2__ {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_QUIRK_RESET_RESUME ; 
 int /*<<< orphan*/  btusb_needs_reset_resume_table ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC2(struct usb_interface *intf)
{
	if (FUNC0(btusb_needs_reset_resume_table))
		FUNC1(intf)->quirks |= USB_QUIRK_RESET_RESUME;
}