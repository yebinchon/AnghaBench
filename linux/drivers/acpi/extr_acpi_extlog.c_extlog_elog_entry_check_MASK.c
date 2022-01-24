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
typedef  int u64 ;
struct acpi_hest_generic_status {scalar_t__ block_status; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ELOG_ENTRY_VALID ; 
 int FUNC2 (int,int) ; 
 int EXT_ELOG_ENTRY_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static struct acpi_hest_generic_status *FUNC4(int cpu, int bank)
{
	int idx;
	u64 data;
	struct acpi_hest_generic_status *estatus;

	FUNC3(cpu < 0);
	idx = FUNC2(cpu, bank);
	data = FUNC1(idx);
	if ((data & ELOG_ENTRY_VALID) == 0)
		return NULL;

	data &= EXT_ELOG_ENTRY_MASK;
	estatus = (struct acpi_hest_generic_status *)FUNC0(data);

	/* if no valid data in elog entry, just return */
	if (estatus->block_status == 0)
		return NULL;

	return estatus;
}