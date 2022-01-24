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
struct acpi_ec {int reference_count; int /*<<< orphan*/  gpe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_GPE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static inline void FUNC6(struct acpi_ec *ec, bool open)
{
	if (open)
		FUNC2(NULL, ec->gpe);
	else {
		FUNC0(ec->reference_count < 1);
		FUNC3(NULL, ec->gpe, ACPI_GPE_ENABLE);
	}
	if (FUNC1(ec)) {
		/*
		 * On some platforms, EN=1 writes cannot trigger GPE. So
		 * software need to manually trigger a pseudo GPE event on
		 * EN=1 writes.
		 */
		FUNC5("Polling quirk");
		FUNC4(ec);
	}
}