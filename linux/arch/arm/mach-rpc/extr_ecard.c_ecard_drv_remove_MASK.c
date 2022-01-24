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
struct expansion_card {int /*<<< orphan*/ * irq_data; int /*<<< orphan*/ * ops; scalar_t__ claimed; } ;
struct ecard_driver {int /*<<< orphan*/  (* remove ) (struct expansion_card*) ;} ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct expansion_card* FUNC0 (struct device*) ; 
 struct ecard_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ecard_default_ops ; 
 int /*<<< orphan*/  FUNC3 (struct expansion_card*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct expansion_card *ec = FUNC0(dev);
	struct ecard_driver *drv = FUNC1(dev->driver);

	drv->remove(ec);
	ec->claimed = 0;

	/*
	 * Restore the default operations.  We ensure that the
	 * ops are set before we change the data.
	 */
	ec->ops = &ecard_default_ops;
	FUNC2();
	ec->irq_data = NULL;

	return 0;
}