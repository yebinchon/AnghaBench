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
struct mm_struct {int dummy; } ;
struct mm_iommu_table_group_mem_t {scalar_t__ dev_hpa; unsigned long ua; int /*<<< orphan*/ * hpas; } ;

/* Variables and functions */
 unsigned long MM_IOMMU_TABLE_GROUP_PAGE_DIRTY ; 
 scalar_t__ MM_IOMMU_TABLE_INVALID_HPA ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct mm_iommu_table_group_mem_t* FUNC0 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 

extern void FUNC2(struct mm_struct *mm, unsigned long ua)
{
	struct mm_iommu_table_group_mem_t *mem;
	long entry;
	void *va;
	unsigned long *pa;

	mem = FUNC0(mm, ua, PAGE_SIZE);
	if (!mem)
		return;

	if (mem->dev_hpa != MM_IOMMU_TABLE_INVALID_HPA)
		return;

	entry = (ua - mem->ua) >> PAGE_SHIFT;
	va = &mem->hpas[entry];

	pa = (void *) FUNC1(va);
	if (!pa)
		return;

	*pa |= MM_IOMMU_TABLE_GROUP_PAGE_DIRTY;
}