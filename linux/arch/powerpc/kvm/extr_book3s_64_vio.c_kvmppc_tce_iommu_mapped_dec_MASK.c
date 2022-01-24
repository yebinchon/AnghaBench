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
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 long H_SUCCESS ; 
 long H_TOO_HARD ; 
 int /*<<< orphan*/ * FUNC0 (struct iommu_table*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mm_iommu_table_group_mem_t* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long const) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_iommu_table_group_mem_t*) ; 

__attribute__((used)) static long FUNC5(struct kvm *kvm,
		struct iommu_table *tbl, unsigned long entry)
{
	struct mm_iommu_table_group_mem_t *mem = NULL;
	const unsigned long pgsize = 1ULL << tbl->it_page_shift;
	__be64 *pua = FUNC0(tbl, entry);

	if (!pua)
		return H_SUCCESS;

	mem = FUNC3(kvm->mm, FUNC1(*pua), pgsize);
	if (!mem)
		return H_TOO_HARD;

	FUNC4(mem);

	*pua = FUNC2(0);

	return H_SUCCESS;
}