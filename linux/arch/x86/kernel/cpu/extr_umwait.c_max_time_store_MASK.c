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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int MSR_IA32_UMWAIT_CONTROL_TIME_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  umwait_control_cached ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  umwait_lock ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *kobj,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	u32 max_time, ctrl;
	int ret;

	ret = FUNC1(buf, 0, &max_time);
	if (ret)
		return ret;

	/* bits[1:0] must be zero */
	if (max_time & ~MSR_IA32_UMWAIT_CONTROL_TIME_MASK)
		return -EINVAL;

	FUNC2(&umwait_lock);

	ctrl = FUNC0(umwait_control_cached);
	if (max_time != FUNC5(ctrl))
		FUNC6(max_time, FUNC4(ctrl));

	FUNC3(&umwait_lock);

	return count;
}