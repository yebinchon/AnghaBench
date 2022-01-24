#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int hwp_boost ; 
 int /*<<< orphan*/  intel_pstate_driver_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *a,
				       struct kobj_attribute *b,
				       const char *buf, size_t count)
{
	unsigned int input;
	int ret;

	ret = FUNC1(buf, 10, &input);
	if (ret)
		return ret;

	FUNC2(&intel_pstate_driver_lock);
	hwp_boost = !!input;
	FUNC0();
	FUNC3(&intel_pstate_driver_lock);

	return count;
}