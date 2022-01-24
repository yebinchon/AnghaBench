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
typedef  int u64 ;
struct device_attribute {int dummy; } ;
struct device {unsigned int id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EPB_MASK ; 
 int MAX_EPB ; 
 int /*<<< orphan*/  MSR_IA32_ENERGY_PERF_BIAS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int* energ_perf_values ; 
 int /*<<< orphan*/  energy_perf_strings ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	unsigned int cpu = dev->id;
	u64 epb, val;
	int ret;

	ret = FUNC1(energy_perf_strings,
				   FUNC0(energy_perf_strings), buf);
	if (ret >= 0)
		val = energ_perf_values[ret];
	else if (FUNC2(buf, 0, &val) || val > MAX_EPB)
		return -EINVAL;

	ret = FUNC3(cpu, MSR_IA32_ENERGY_PERF_BIAS, &epb);
	if (ret < 0)
		return ret;

	ret = FUNC4(cpu, MSR_IA32_ENERGY_PERF_BIAS,
			    (epb & ~EPB_MASK) | val);
	if (ret < 0)
		return ret;

	return count;
}