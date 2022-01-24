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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {unsigned long attr_freeze_on_smi; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  flip_smm_bit ; 
 int /*<<< orphan*/  freeze_on_smi_mutex ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static ssize_t FUNC6(struct device *cdev,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	unsigned long val;
	ssize_t ret;

	ret = FUNC1(buf, 0, &val);
	if (ret)
		return ret;

	if (val > 1)
		return -EINVAL;

	FUNC2(&freeze_on_smi_mutex);

	if (x86_pmu.attr_freeze_on_smi == val)
		goto done;

	x86_pmu.attr_freeze_on_smi = val;

	FUNC0();
	FUNC4(flip_smm_bit, &val, 1);
	FUNC5();
done:
	FUNC3(&freeze_on_smi_mutex);

	return count;
}