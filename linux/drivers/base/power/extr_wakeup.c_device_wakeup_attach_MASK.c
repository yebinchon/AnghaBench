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
struct wakeup_source {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ wakeirq; struct wakeup_source* wakeup; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct wakeup_source *ws)
{
	FUNC1(&dev->power.lock);
	if (dev->power.wakeup) {
		FUNC2(&dev->power.lock);
		return -EEXIST;
	}
	dev->power.wakeup = ws;
	if (dev->power.wakeirq)
		FUNC0(dev, dev->power.wakeirq);
	FUNC2(&dev->power.lock);
	return 0;
}