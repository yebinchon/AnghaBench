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
struct TYPE_2__ {int /*<<< orphan*/  bus_name; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {int dummy; } ;

/* Variables and functions */
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ohci_hcd*) ; 
 int FUNC3 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct ohci_hcd *ohci = FUNC0(hcd);
	int ret;

	ret = FUNC2(ohci);
	if (ret < 0)
		return ret;

	ret = FUNC3(ohci);
	if (ret < 0) {
		FUNC1(ohci, "can't start %s", hcd->self.bus_name);
		FUNC4(hcd);
		return ret;
	}

	return 0;
}