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
struct acpi_ec {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  ec_delay ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct acpi_ec *ec)
{
	unsigned long flags;
	int repeat = 5; /* number of command restarts */

	while (repeat--) {
		unsigned long delay = jiffies +
			FUNC2(ec_delay);
		do {
			if (!FUNC1(ec))
				return 0;
			FUNC4(&ec->lock, flags);
			FUNC0(ec);
			FUNC5(&ec->lock, flags);
		} while (FUNC7(jiffies, delay));
		FUNC3("controller reset, restart transaction\n");
		FUNC4(&ec->lock, flags);
		FUNC6(ec);
		FUNC5(&ec->lock, flags);
	}
	return -ETIME;
}