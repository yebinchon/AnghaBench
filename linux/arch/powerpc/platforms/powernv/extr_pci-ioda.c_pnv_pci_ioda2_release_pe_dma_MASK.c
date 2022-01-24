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
struct iommu_table {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_ioda_pe*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pnv_ioda_pe*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct pnv_ioda_pe*) ; 

__attribute__((used)) static void FUNC7(struct pnv_ioda_pe *pe)
{
	struct iommu_table *tbl = pe->table_group.tables[0];
	unsigned int weight = FUNC6(pe);
#ifdef CONFIG_IOMMU_API
	int64_t rc;
#endif

	if (!weight)
		return;

#ifdef CONFIG_IOMMU_API
	rc = pnv_pci_ioda2_unset_window(&pe->table_group, 0);
	if (rc)
		pe_warn(pe, "OPAL error %lld release DMA window\n", rc);
#endif

	FUNC4(pe, false);
	if (pe->table_group.group) {
		FUNC1(pe->table_group.group);
		FUNC0(pe->table_group.group);
	}

	FUNC2(tbl);
}