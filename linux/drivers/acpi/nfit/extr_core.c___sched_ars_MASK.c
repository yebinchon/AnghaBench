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
struct acpi_nfit_desc {unsigned int scrub_tmo; int /*<<< orphan*/  dwork; int /*<<< orphan*/  scrub_flags; int /*<<< orphan*/  init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARS_BUSY ; 
 unsigned int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfit_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct acpi_nfit_desc *acpi_desc, unsigned int tmo)
{
	FUNC0(&acpi_desc->init_mutex);

	FUNC2(ARS_BUSY, &acpi_desc->scrub_flags);
	/* note this should only be set from within the workqueue */
	if (tmo)
		acpi_desc->scrub_tmo = tmo;
	FUNC1(nfit_wq, &acpi_desc->dwork, tmo * HZ);
}