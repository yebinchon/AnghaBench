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
struct usb_otg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBH1_VBUSEN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct usb_otg *otg, bool on)
{
	if (on)
		FUNC0(USBH1_VBUSEN_B, 0);
	else
		FUNC0(USBH1_VBUSEN_B, 1);

	return 0;
}