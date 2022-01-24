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
struct TYPE_2__ {scalar_t__ request; int /*<<< orphan*/  lock; scalar_t__ request_pending; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 scalar_t__ RPM_REQ_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct device *dev)
{
	int retval = 0;

	FUNC1(dev);
	FUNC4(&dev->power.lock);

	if (dev->power.request_pending
	    && dev->power.request == RPM_REQ_RESUME) {
		FUNC3(dev, 0);
		retval = 1;
	}

	FUNC0(dev);

	FUNC5(&dev->power.lock);
	FUNC2(dev);

	return retval;
}