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
struct usb_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* u2d ; 

int FUNC4(struct usb_bus *host)
{
	int err = 0;

	/* In case the PXA3xx ULPI isn't used, do nothing. */
	if (!u2d)
		return 0;

	FUNC0(u2d->clk);

	if (FUNC1()) {
		FUNC3();
		err = FUNC2(host);
	}

	return err;
}