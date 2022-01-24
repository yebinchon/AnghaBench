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
struct usb_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBH1_MODE ; 
 int /*<<< orphan*/  USBH1_VBUSEN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct usb_phy *otg)
{
	int ret = FUNC2(USBH1_MODE, "usbh1-mode");
	if (ret)
		return ret;
	/* single ended */
	FUNC0(USBH1_MODE, 0);

	ret = FUNC2(USBH1_VBUSEN_B, "usbh1-vbusen");
	if (ret) {
		FUNC1(USBH1_MODE);
		return ret;
	}
	FUNC0(USBH1_VBUSEN_B, 1);

	return 0;
}