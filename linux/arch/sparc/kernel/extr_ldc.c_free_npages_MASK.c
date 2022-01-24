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
struct ldc_iommu {int /*<<< orphan*/  iommu_map_table; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (int,struct ldc_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (struct ldc_iommu*,unsigned long,int,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long id, struct ldc_iommu *iommu,
			u64 cookie, u64 size)
{
	unsigned long npages, entry;

	npages = FUNC0(((cookie & ~PAGE_MASK) + size)) >> PAGE_SHIFT;

	entry = FUNC2(cookie, iommu);
	FUNC3(iommu, id, cookie, entry, npages);
	FUNC1(&iommu->iommu_map_table, cookie, npages, entry);
}