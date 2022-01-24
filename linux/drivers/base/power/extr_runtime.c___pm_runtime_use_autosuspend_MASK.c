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
struct TYPE_2__ {int autosuspend_delay; int use_autosuspend; int /*<<< orphan*/  lock; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int) ; 

void FUNC3(struct device *dev, bool use)
{
	int old_delay, old_use;

	FUNC0(&dev->power.lock);
	old_delay = dev->power.autosuspend_delay;
	old_use = dev->power.use_autosuspend;
	dev->power.use_autosuspend = use;
	FUNC2(dev, old_delay, old_use);
	FUNC1(&dev->power.lock);
}