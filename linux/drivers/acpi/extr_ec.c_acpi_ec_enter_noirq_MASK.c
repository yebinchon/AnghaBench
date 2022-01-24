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
struct acpi_ec {int busy_polling; int /*<<< orphan*/  lock; scalar_t__ polling_guard; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct acpi_ec *ec)
{
	unsigned long flags;

	FUNC1(&ec->lock, flags);
	ec->busy_polling = true;
	ec->polling_guard = 0;
	FUNC0("interrupt blocked");
	FUNC2(&ec->lock, flags);
}