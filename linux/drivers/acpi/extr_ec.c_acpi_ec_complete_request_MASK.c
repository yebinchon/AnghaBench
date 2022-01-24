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
struct acpi_ec {scalar_t__ reference_count; int /*<<< orphan*/  wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_FLAGS_GPE_HANDLER_INSTALLED ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*,int) ; 
 int FUNC1 (struct acpi_ec*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct acpi_ec *ec)
{
	bool flushed = false;

	ec->reference_count--;
	if (FUNC2(EC_FLAGS_GPE_HANDLER_INSTALLED, &ec->flags) &&
	    ec->reference_count == 0)
		FUNC0(ec, true);
	flushed = FUNC1(ec);
	if (flushed)
		FUNC3(&ec->wait);
}