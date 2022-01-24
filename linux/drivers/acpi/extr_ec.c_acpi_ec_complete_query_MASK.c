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
struct acpi_ec {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EC_COMMAND_QUERY ; 
 int /*<<< orphan*/  EC_FLAGS_QUERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct acpi_ec *ec)
{
	if (FUNC3(EC_FLAGS_QUERY_PENDING, &ec->flags))
		FUNC2("Command(%s) unblocked",
			   FUNC0(ACPI_EC_COMMAND_QUERY));
	FUNC1(ec);
}