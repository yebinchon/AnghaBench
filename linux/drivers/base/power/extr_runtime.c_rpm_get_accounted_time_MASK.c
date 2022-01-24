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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_time; int /*<<< orphan*/  suspended_time; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static u64 FUNC3(struct device *dev, bool suspended)
{
	u64 time;
	unsigned long flags;

	FUNC0(&dev->power.lock, flags);

	FUNC2(dev);
	time = suspended ? dev->power.suspended_time : dev->power.active_time;

	FUNC1(&dev->power.lock, flags);

	return time;
}