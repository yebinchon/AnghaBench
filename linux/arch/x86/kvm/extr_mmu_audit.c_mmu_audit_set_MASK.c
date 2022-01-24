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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(const char *val, const struct kernel_param *kp)
{
	int ret;
	unsigned long enable;

	ret = FUNC0(val, 10, &enable);
	if (ret < 0)
		return -EINVAL;

	switch (enable) {
	case 0:
		FUNC1();
		break;
	case 1:
		FUNC2();
		break;
	default:
		return -EINVAL;
	}

	return 0;
}