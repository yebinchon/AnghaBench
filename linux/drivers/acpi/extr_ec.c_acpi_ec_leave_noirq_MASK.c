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
struct acpi_ec {int /*<<< orphan*/  lock; int /*<<< orphan*/  polling_guard; int /*<<< orphan*/  busy_polling; } ;

/* Variables and functions */
 int /*<<< orphan*/  ec_busy_polling ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ec_polling_guard ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct acpi_ec *ec)
{
	unsigned long flags;

	FUNC1(&ec->lock, flags);
	ec->busy_polling = ec_busy_polling;
	ec->polling_guard = ec_polling_guard;
	FUNC0("interrupt unblocked");
	FUNC2(&ec->lock, flags);
}