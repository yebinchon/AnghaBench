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
struct iommu_table {scalar_t__ it_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_MULTITCE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 () ; 
 void FUNC5 (struct iommu_table*,long,long) ; 

__attribute__((used)) static void FUNC6(struct iommu_table *tbl, long tcenum, long npages)
{
	u64 rc;

	if (!FUNC1(FW_FEATURE_MULTITCE))
		return FUNC5(tbl, tcenum, npages);

	rc = FUNC2((u64)tbl->it_index, (u64)tcenum << 12, 0, npages);

	if (rc && FUNC4()) {
		FUNC3("tce_freemulti_pSeriesLP: plpar_tce_stuff failed\n");
		FUNC3("\trc      = %lld\n", rc);
		FUNC3("\tindex   = 0x%llx\n", (u64)tbl->it_index);
		FUNC3("\tnpages  = 0x%llx\n", (u64)npages);
		FUNC0();
	}
}