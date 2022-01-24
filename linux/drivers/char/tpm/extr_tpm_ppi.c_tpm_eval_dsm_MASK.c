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
typedef  union acpi_object {int dummy; } acpi_object ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  acpi_object_type ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 union acpi_object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,union acpi_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpm_ppi_guid ; 

__attribute__((used)) static inline union acpi_object *
FUNC2(acpi_handle ppi_handle, int func, acpi_object_type type,
	     union acpi_object *argv4, u64 rev)
{
	FUNC0(!ppi_handle);
	return FUNC1(ppi_handle, &tpm_ppi_guid,
				       rev, func, argv4, type);
}