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
struct acpi_ec {int /*<<< orphan*/  work; int /*<<< orphan*/  nr_pending_queries; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EC_COMMAND_QUERY ; 
 int /*<<< orphan*/  EC_FLAGS_QUERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct acpi_ec *ec)
{
	FUNC2(ec);
	if (!FUNC1(ec))
		return;
	if (!FUNC5(EC_FLAGS_QUERY_PENDING, &ec->flags)) {
		FUNC3("Command(%s) submitted/blocked",
			   FUNC0(ACPI_EC_COMMAND_QUERY));
		ec->nr_pending_queries++;
		FUNC4(&ec->work);
	}
}