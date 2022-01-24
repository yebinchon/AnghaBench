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
struct transaction {scalar_t__ irq_count; int /*<<< orphan*/  command; } ;
struct acpi_ec {int /*<<< orphan*/  lock; struct transaction* curr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ec*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct acpi_ec*) ; 
 scalar_t__ ec_storm_threshold ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_ec*) ; 

__attribute__((used)) static int FUNC10(struct acpi_ec *ec,
					struct transaction *t)
{
	unsigned long tmp;
	int ret = 0;

	/* start transaction */
	FUNC7(&ec->lock, tmp);
	/* Enable GPE for command processing (IBF=0/OBF=1) */
	if (!FUNC2(ec)) {
		ret = -EINVAL;
		goto unlock;
	}
	FUNC4(ec, "Increase command");
	/* following two actions should be kept atomic */
	ec->curr = t;
	FUNC5("Command(%s) started", FUNC0(t->command));
	FUNC9(ec);
	FUNC8(&ec->lock, tmp);

	ret = FUNC6(ec);

	FUNC7(&ec->lock, tmp);
	if (t->irq_count == ec_storm_threshold)
		FUNC3(ec);
	FUNC5("Command(%s) stopped", FUNC0(t->command));
	ec->curr = NULL;
	/* Disable GPE for command processing (IBF=0/OBF=1) */
	FUNC1(ec);
	FUNC4(ec, "Decrease command");
unlock:
	FUNC8(&ec->lock, tmp);
	return ret;
}