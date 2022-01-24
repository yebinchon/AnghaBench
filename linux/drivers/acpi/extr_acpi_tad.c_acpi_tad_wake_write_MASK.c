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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACPI_TAD_WAKE_DISABLED ; 
 int EINVAL ; 
 int FUNC0 (struct device*,char*,scalar_t__,scalar_t__) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, const char *buf, char *method,
			       u32 timer_id, const char *specval)
{
	u32 value;

	if (FUNC2(buf, specval)) {
		value = ACPI_TAD_WAKE_DISABLED;
	} else {
		int ret = FUNC1(buf, 0, &value);

		if (ret)
			return ret;

		if (value == ACPI_TAD_WAKE_DISABLED)
			return -EINVAL;
	}

	return FUNC0(dev, method, timer_id, value);
}