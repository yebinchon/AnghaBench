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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_NS_LOCAL ; 
 int ACPI_NS_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int* acpi_gbl_ns_properties ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  ns_local ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

u32 FUNC4(acpi_object_type type)
{
	FUNC0(ns_local);

	if (!FUNC2(type)) {

		/* Type code out of range  */

		FUNC1((AE_INFO, "Invalid Object Type 0x%X", type));
		FUNC3(ACPI_NS_NORMAL);
	}

	FUNC3(acpi_gbl_ns_properties[type] & ACPI_NS_LOCAL);
}