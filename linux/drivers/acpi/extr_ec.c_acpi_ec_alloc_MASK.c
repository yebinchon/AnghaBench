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
struct acpi_ec {int busy_polling; scalar_t__ polling_guard; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_ec_event_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct acpi_ec* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct acpi_ec *FUNC6(void)
{
	struct acpi_ec *ec = FUNC3(sizeof(struct acpi_ec), GFP_KERNEL);

	if (!ec)
		return NULL;
	FUNC4(&ec->mutex);
	FUNC2(&ec->wait);
	FUNC0(&ec->list);
	FUNC5(&ec->lock);
	FUNC1(&ec->work, acpi_ec_event_handler);
	ec->timestamp = jiffies;
	ec->busy_polling = true;
	ec->polling_guard = 0;
	return ec;
}