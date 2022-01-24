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
struct expansion_card {scalar_t__ loader; scalar_t__ claimed; } ;
struct ecard_request {struct expansion_card* ec; int /*<<< orphan*/  fn; } ;
struct ecard_driver {int /*<<< orphan*/  (* shutdown ) (struct expansion_card*) ;} ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 struct expansion_card* FUNC0 (struct device*) ; 
 struct ecard_driver* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ecard_request*) ; 
 int /*<<< orphan*/  ecard_task_reset ; 
 int /*<<< orphan*/  FUNC3 (struct expansion_card*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct expansion_card *ec = FUNC0(dev);
	struct ecard_driver *drv = FUNC1(dev->driver);
	struct ecard_request req;

	if (dev->driver) {
		if (drv->shutdown)
			drv->shutdown(ec);
		ec->claimed = 0;
	}

	/*
	 * If this card has a loader, call the reset handler.
	 */
	if (ec->loader) {
		req.fn = ecard_task_reset;
		req.ec = ec;
		FUNC2(&req);
	}
}