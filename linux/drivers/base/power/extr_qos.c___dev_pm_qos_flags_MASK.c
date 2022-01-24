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
struct pm_qos_flags {int effective_flags; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct dev_pm_qos* qos; } ;
struct device {TYPE_1__ power; } ;
struct dev_pm_qos {struct pm_qos_flags flags; } ;
typedef  int s32 ;
typedef  enum pm_qos_flags_status { ____Placeholder_pm_qos_flags_status } pm_qos_flags_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_qos*) ; 
 int PM_QOS_FLAGS_ALL ; 
 int PM_QOS_FLAGS_NONE ; 
 int PM_QOS_FLAGS_SOME ; 
 int PM_QOS_FLAGS_UNDEFINED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

enum pm_qos_flags_status FUNC3(struct device *dev, s32 mask)
{
	struct dev_pm_qos *qos = dev->power.qos;
	struct pm_qos_flags *pqf;
	s32 val;

	FUNC2(&dev->power.lock);

	if (FUNC0(qos))
		return PM_QOS_FLAGS_UNDEFINED;

	pqf = &qos->flags;
	if (FUNC1(&pqf->list))
		return PM_QOS_FLAGS_UNDEFINED;

	val = pqf->effective_flags & mask;
	if (val)
		return (val == mask) ? PM_QOS_FLAGS_ALL : PM_QOS_FLAGS_SOME;

	return PM_QOS_FLAGS_NONE;
}