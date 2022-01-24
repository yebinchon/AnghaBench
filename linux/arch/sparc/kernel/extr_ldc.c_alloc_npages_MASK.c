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
struct ldc_mtable_entry {int dummy; } ;
struct ldc_iommu {struct ldc_mtable_entry* page_table; int /*<<< orphan*/  iommu_map_table; } ;

/* Variables and functions */
 long IOMMU_ERROR_CODE ; 
 long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static struct ldc_mtable_entry *FUNC2(struct ldc_iommu *iommu,
					     unsigned long npages)
{
	long entry;

	entry = FUNC0(NULL, &iommu->iommu_map_table,
				      npages, NULL, (unsigned long)-1, 0);
	if (FUNC1(entry == IOMMU_ERROR_CODE))
		return NULL;

	return iommu->page_table + entry;
}