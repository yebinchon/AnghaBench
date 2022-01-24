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
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ ACPI_EVENT_TYPE_FIXED ; 
 scalar_t__ ACPI_EVENT_TYPE_GPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(u32 event_type, acpi_handle device,
	u32 event_number, void *context)
{
	if (event_type == ACPI_EVENT_TYPE_GPE) {
		FUNC1(event_number);
		FUNC2("GPE event 0x%02x\n", event_number);
	} else if (event_type == ACPI_EVENT_TYPE_FIXED) {
		FUNC0(event_number);
		FUNC2("Fixed event 0x%02x\n", event_number);
	} else {
		FUNC2("Other event 0x%02x\n", event_number);
	}
}