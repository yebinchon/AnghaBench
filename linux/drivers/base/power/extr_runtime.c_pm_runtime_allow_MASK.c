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
struct TYPE_2__ {int runtime_auto; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage_count; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int RPM_ASYNC ; 
 int RPM_AUTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct device *dev)
{
	FUNC2(&dev->power.lock);
	if (dev->power.runtime_auto)
		goto out;

	dev->power.runtime_auto = true;
	if (FUNC0(&dev->power.usage_count))
		FUNC1(dev, RPM_AUTO | RPM_ASYNC);

 out:
	FUNC3(&dev->power.lock);
}