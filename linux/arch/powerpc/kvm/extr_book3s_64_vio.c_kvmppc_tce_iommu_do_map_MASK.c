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
struct mm_iommu_table_group_mem_t {int dummy; } ;
struct kvm {int /*<<< orphan*/  mm; } ;
struct iommu_table {unsigned long long it_page_shift; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int DMA_NONE ; 
 long H_TOO_HARD ; 
 int /*<<< orphan*/ * FUNC0 (struct iommu_table*,unsigned long) ; 
 scalar_t__ FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 long FUNC3 (int /*<<< orphan*/ ,struct iommu_table*,unsigned long,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,struct iommu_table*,unsigned long) ; 
 struct mm_iommu_table_group_mem_t* FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_iommu_table_group_mem_t*) ; 
 scalar_t__ FUNC7 (struct mm_iommu_table_group_mem_t*) ; 
 long FUNC8 (struct mm_iommu_table_group_mem_t*,unsigned long,unsigned long long,unsigned long*) ; 

long FUNC9(struct kvm *kvm, struct iommu_table *tbl,
		unsigned long entry, unsigned long ua,
		enum dma_data_direction dir)
{
	long ret;
	unsigned long hpa;
	__be64 *pua = FUNC0(tbl, entry);
	struct mm_iommu_table_group_mem_t *mem;

	if (!pua)
		/* it_userspace allocation might be delayed */
		return H_TOO_HARD;

	mem = FUNC5(kvm->mm, ua, 1ULL << tbl->it_page_shift);
	if (!mem)
		/* This only handles v2 IOMMU type, v1 is handled via ioctl() */
		return H_TOO_HARD;

	if (FUNC1(FUNC8(mem, ua, tbl->it_page_shift, &hpa)))
		return H_TOO_HARD;

	if (FUNC7(mem))
		return H_TOO_HARD;

	ret = FUNC3(kvm->mm, tbl, entry, &hpa, &dir);
	if (FUNC1(ret)) {
		FUNC6(mem);
		return H_TOO_HARD;
	}

	if (dir != DMA_NONE)
		FUNC4(kvm, tbl, entry);

	*pua = FUNC2(ua);

	return 0;
}