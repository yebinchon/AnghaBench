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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  in_crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_AML_IN_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ acpi_aml_io ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(void)
{
	bool ret;

	FUNC2(&acpi_aml_io.lock);
	ret = !FUNC0(ACPI_AML_IN_USER) ||
	      FUNC1(&acpi_aml_io.in_crc, ACPI_AML_IN_USER);
	FUNC3(&acpi_aml_io.lock);
	return ret;
}