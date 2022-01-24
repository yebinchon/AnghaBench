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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AE_OK ; 
 void* acpi_gbl_trace_dbg_layer ; 
 void* acpi_gbl_trace_dbg_level ; 
 void* acpi_gbl_trace_flags ; 
 char const* acpi_gbl_trace_method_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(const char *name, u32 debug_level, u32 debug_layer, u32 flags)
{
	acpi_status status;

	status = FUNC1(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		return (status);
	}

	acpi_gbl_trace_method_name = name;
	acpi_gbl_trace_flags = flags;
	acpi_gbl_trace_dbg_level = debug_level;
	acpi_gbl_trace_dbg_layer = debug_layer;
	status = AE_OK;

	(void)FUNC2(ACPI_MTX_NAMESPACE);
	return (status);
}