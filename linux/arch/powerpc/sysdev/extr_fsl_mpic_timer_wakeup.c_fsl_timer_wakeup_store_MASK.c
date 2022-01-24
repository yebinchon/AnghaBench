#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time64_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_7__ {TYPE_1__* timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_mpic_timer_irq ; 
 TYPE_3__* fsl_wakeup ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_lock ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				struct device_attribute *attr,
				const char *buf,
				size_t count)
{
	time64_t interval;
	int ret;

	if (FUNC2(buf, 0, &interval))
		return -EINVAL;

	FUNC6(&sysfs_lock);

	if (fsl_wakeup->timer) {
		FUNC0(fsl_wakeup->timer->irq);
		FUNC3(fsl_wakeup->timer);
		fsl_wakeup->timer = NULL;
	}

	if (!interval) {
		FUNC7(&sysfs_lock);
		return count;
	}

	fsl_wakeup->timer = FUNC4(fsl_mpic_timer_irq,
						fsl_wakeup, interval);
	if (!fsl_wakeup->timer) {
		FUNC7(&sysfs_lock);
		return -EINVAL;
	}

	ret = FUNC1(fsl_wakeup->timer->irq);
	if (ret) {
		FUNC3(fsl_wakeup->timer);
		fsl_wakeup->timer = NULL;
		FUNC7(&sysfs_lock);

		return ret;
	}

	FUNC5(fsl_wakeup->timer);

	FUNC7(&sysfs_lock);

	return count;
}