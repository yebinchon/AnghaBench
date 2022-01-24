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
typedef  scalar_t__ u32 ;
struct acpi_table_events_work {int /*<<< orphan*/  work; scalar_t__ event; void* table; } ;

/* Variables and functions */
 scalar_t__ ACPI_TABLE_EVENT_LOAD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_scan_initialized ; 
 int /*<<< orphan*/  acpi_table_events_fn ; 
 struct acpi_table_events_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(u32 event, void *table, void *context)
{
	struct acpi_table_events_work *tew;

	if (!acpi_scan_initialized)
		return;

	if (event != ACPI_TABLE_EVENT_LOAD)
		return;

	tew = FUNC1(sizeof(*tew), GFP_KERNEL);
	if (!tew)
		return;

	FUNC0(&tew->work, acpi_table_events_fn);
	tew->table = table;
	tew->event = event;

	FUNC2(&tew->work);
}