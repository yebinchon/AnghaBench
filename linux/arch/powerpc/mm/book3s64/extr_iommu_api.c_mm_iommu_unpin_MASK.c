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
struct page {int dummy; } ;
struct mm_iommu_table_group_mem_t {int* hpas; long entries; } ;

/* Variables and functions */
 int MM_IOMMU_TABLE_GROUP_PAGE_DIRTY ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static void FUNC3(struct mm_iommu_table_group_mem_t *mem)
{
	long i;
	struct page *page = NULL;

	if (!mem->hpas)
		return;

	for (i = 0; i < mem->entries; ++i) {
		if (!mem->hpas[i])
			continue;

		page = FUNC1(mem->hpas[i] >> PAGE_SHIFT);
		if (!page)
			continue;

		if (mem->hpas[i] & MM_IOMMU_TABLE_GROUP_PAGE_DIRTY)
			FUNC0(page);

		FUNC2(page);
		mem->hpas[i] = 0;
	}
}