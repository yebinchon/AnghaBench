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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct device {TYPE_1__ power; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum pm_qos_flags_status { ____Placeholder_pm_qos_flags_status } pm_qos_flags_status ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

enum pm_qos_flags_status FUNC3(struct device *dev, s32 mask)
{
	unsigned long irqflags;
	enum pm_qos_flags_status ret;

	FUNC1(&dev->power.lock, irqflags);
	ret = FUNC0(dev, mask);
	FUNC2(&dev->power.lock, irqflags);

	return ret;
}