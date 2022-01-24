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
struct acpi_processor_performance {int dummy; } ;
struct acpi_processor {struct acpi_processor_performance* performance; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  acpi_processor_cpufreq_init ; 
 scalar_t__ FUNC1 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct acpi_processor* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  performance_mutex ; 
 int /*<<< orphan*/  processors ; 

int
FUNC5(struct acpi_processor_performance
				    *performance, unsigned int cpu)
{
	struct acpi_processor *pr;

	if (!acpi_processor_cpufreq_init)
		return -EINVAL;

	FUNC2(&performance_mutex);

	pr = FUNC4(processors, cpu);
	if (!pr) {
		FUNC3(&performance_mutex);
		return -ENODEV;
	}

	if (pr->performance) {
		FUNC3(&performance_mutex);
		return -EBUSY;
	}

	FUNC0(!performance);

	pr->performance = performance;

	if (FUNC1(pr)) {
		pr->performance = NULL;
		FUNC3(&performance_mutex);
		return -EIO;
	}

	FUNC3(&performance_mutex);
	return 0;
}