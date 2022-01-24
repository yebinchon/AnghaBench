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
typedef  size_t ssize_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 TYPE_1__ ts78xx_fpga ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
			struct kobj_attribute *attr, const char *buf, size_t n)
{
	int value, ret;

	if (ts78xx_fpga.state < 0) {
		FUNC0("FPGA borked, you must powercycle ASAP\n");
		return -EBUSY;
	}

	if (FUNC1(buf, "online", sizeof("online") - 1) == 0)
		value = 1;
	else if (FUNC1(buf, "offline", sizeof("offline") - 1) == 0)
		value = 0;
	else
		return -EINVAL;

	if (ts78xx_fpga.state == value)
		return n;

	ret = (ts78xx_fpga.state == 0)
		? FUNC2()
		: FUNC3();

	if (!(ret < 0))
		ts78xx_fpga.state = value;

	return n;
}