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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  acpi_trace_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_TRACE_POINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_trace_point ; 

void
FUNC3(acpi_trace_event_type type,
		    u8 begin, u8 *aml, char *pathname)
{

	FUNC1(ex_trace_point);

	if (pathname) {
		FUNC0((ACPI_DB_TRACE_POINT,
				  "%s %s [0x%p:%s] execution.\n",
				  FUNC2(type),
				  begin ? "Begin" : "End", aml, pathname));
	} else {
		FUNC0((ACPI_DB_TRACE_POINT,
				  "%s %s [0x%p] execution.\n",
				  FUNC2(type),
				  begin ? "Begin" : "End", aml));
	}
}