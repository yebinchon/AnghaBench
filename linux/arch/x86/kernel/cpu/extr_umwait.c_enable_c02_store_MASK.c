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
typedef  int /*<<< orphan*/  u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  umwait_control_cached ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umwait_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	bool c02_enable;
	u32 ctrl;
	int ret;

	ret = FUNC1(buf, &c02_enable);
	if (ret)
		return ret;

	FUNC2(&umwait_lock);

	ctrl = FUNC0(umwait_control_cached);
	if (c02_enable != FUNC4(ctrl))
		FUNC5(ctrl, c02_enable);

	FUNC3(&umwait_lock);

	return count;
}