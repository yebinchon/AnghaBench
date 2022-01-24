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
struct acpi_processor {TYPE_1__* performance; } ;
struct TYPE_2__ {int /*<<< orphan*/  states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct acpi_processor* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  performance_mutex ; 
 int /*<<< orphan*/  processors ; 

void FUNC4(unsigned int cpu)
{
	struct acpi_processor *pr;

	FUNC1(&performance_mutex);

	pr = FUNC3(processors, cpu);
	if (!pr) {
		FUNC2(&performance_mutex);
		return;
	}

	if (pr->performance)
		FUNC0(pr->performance->states);
	pr->performance = NULL;

	FUNC2(&performance_mutex);

	return;
}