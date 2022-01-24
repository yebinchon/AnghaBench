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
struct admhcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct admhcd*) ; 
 int FUNC2 (struct admhcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 struct admhcd* FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct admhcd	*ahcd = FUNC4(hcd);
	int		ret;

	ret = FUNC1(ahcd);
	if (ret < 0) {
		FUNC0("unable to init %s\n", hcd->self.bus_name);
		goto err;
	}

	ret = FUNC2(ahcd);
	if (ret < 0) {
		FUNC0("unable to run %s\n", hcd->self.bus_name);
		goto err_stop;
	}

	return 0;

err_stop:
	FUNC3(hcd);
err:
	return ret;
}