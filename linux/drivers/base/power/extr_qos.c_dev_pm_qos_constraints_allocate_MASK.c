#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pm_qos_constraints {void* type; int /*<<< orphan*/  no_constraint_value; void* default_value; void* target_value; int /*<<< orphan*/  list; struct blocking_notifier_head* notifiers; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; struct dev_pm_qos* qos; } ;
struct device {TYPE_2__ power; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct dev_pm_qos {TYPE_1__ flags; struct pm_qos_constraints latency_tolerance; struct pm_qos_constraints resume_latency; } ;
struct blocking_notifier_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blocking_notifier_head*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* PM_QOS_LATENCY_TOLERANCE_DEFAULT_VALUE ; 
 int /*<<< orphan*/  PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT ; 
 void* PM_QOS_MIN ; 
 void* PM_QOS_RESUME_LATENCY_DEFAULT_VALUE ; 
 int /*<<< orphan*/  PM_QOS_RESUME_LATENCY_NO_CONSTRAINT ; 
 int /*<<< orphan*/  FUNC2 (struct dev_pm_qos*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct dev_pm_qos *qos;
	struct pm_qos_constraints *c;
	struct blocking_notifier_head *n;

	qos = FUNC3(sizeof(*qos), GFP_KERNEL);
	if (!qos)
		return -ENOMEM;

	n = FUNC3(3 * sizeof(*n), GFP_KERNEL);
	if (!n) {
		FUNC2(qos);
		return -ENOMEM;
	}

	c = &qos->resume_latency;
	FUNC4(&c->list);
	c->target_value = PM_QOS_RESUME_LATENCY_DEFAULT_VALUE;
	c->default_value = PM_QOS_RESUME_LATENCY_DEFAULT_VALUE;
	c->no_constraint_value = PM_QOS_RESUME_LATENCY_NO_CONSTRAINT;
	c->type = PM_QOS_MIN;
	c->notifiers = n;
	FUNC0(n);

	c = &qos->latency_tolerance;
	FUNC4(&c->list);
	c->target_value = PM_QOS_LATENCY_TOLERANCE_DEFAULT_VALUE;
	c->default_value = PM_QOS_LATENCY_TOLERANCE_DEFAULT_VALUE;
	c->no_constraint_value = PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT;
	c->type = PM_QOS_MIN;

	FUNC1(&qos->flags.list);

	FUNC5(&dev->power.lock);
	dev->power.qos = qos;
	FUNC6(&dev->power.lock);

	return 0;
}