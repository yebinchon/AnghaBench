#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ group; struct iommu_table** tables; } ;
struct pnv_ioda_pe {TYPE_1__ table_group; } ;
struct iommu_table {int it_size; int /*<<< orphan*/  it_base; int /*<<< orphan*/  it_offset; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_table*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct pnv_ioda_pe*) ; 
 int /*<<< orphan*/  FUNC7 (struct iommu_table*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC8(struct pnv_ioda_pe *pe)
{
	unsigned int weight = FUNC6(pe);
	struct iommu_table *tbl = pe->table_group.tables[0];
	int64_t rc;

	if (!weight)
		return;

	rc = FUNC5(&pe->table_group, 0);
	if (rc != OPAL_SUCCESS)
		return;

	FUNC7(tbl, tbl->it_offset, tbl->it_size, false);
	if (pe->table_group.group) {
		FUNC3(pe->table_group.group);
		FUNC0(pe->table_group.group);
	}

	FUNC1(tbl->it_base, FUNC2(tbl->it_size << 3));
	FUNC4(tbl);
}