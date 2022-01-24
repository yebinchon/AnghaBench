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
struct acpi_nfit_system_address {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFIT_SPA_VCD ; 
 scalar_t__ NFIT_SPA_VDISK ; 
 scalar_t__ NFIT_SPA_VOLATILE ; 
 scalar_t__ FUNC0 (struct acpi_nfit_system_address*) ; 

__attribute__((used)) static bool FUNC1(struct acpi_nfit_system_address *spa)
{
	return (FUNC0(spa) == NFIT_SPA_VDISK ||
		FUNC0(spa) == NFIT_SPA_VCD   ||
		FUNC0(spa) == NFIT_SPA_VOLATILE);
}