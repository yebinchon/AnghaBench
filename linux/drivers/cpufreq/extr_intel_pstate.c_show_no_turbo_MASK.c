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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int turbo_disabled; int no_turbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 TYPE_1__ global ; 
 int /*<<< orphan*/  intel_pstate_driver ; 
 int /*<<< orphan*/  intel_pstate_driver_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
			     struct kobj_attribute *attr, char *buf)
{
	ssize_t ret;

	FUNC0(&intel_pstate_driver_lock);

	if (!intel_pstate_driver) {
		FUNC1(&intel_pstate_driver_lock);
		return -EAGAIN;
	}

	FUNC3();
	if (global.turbo_disabled)
		ret = FUNC2(buf, "%u\n", global.turbo_disabled);
	else
		ret = FUNC2(buf, "%u\n", global.no_turbo);

	FUNC1(&intel_pstate_driver_lock);

	return ret;
}