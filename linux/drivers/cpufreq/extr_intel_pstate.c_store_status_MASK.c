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
 int /*<<< orphan*/  intel_pstate_driver_lock ; 
 int FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *a, struct kobj_attribute *b,
			    const char *buf, size_t count)
{
	char *p = FUNC1(buf, '\n', count);
	int ret;

	FUNC2(&intel_pstate_driver_lock);
	ret = FUNC0(buf, p ? p - buf : count);
	FUNC3(&intel_pstate_driver_lock);

	return ret < 0 ? ret : count;
}