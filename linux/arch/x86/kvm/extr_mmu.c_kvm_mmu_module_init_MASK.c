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
typedef  union kvm_mmu_role {int dummy; } kvm_mmu_role ;
typedef  union kvm_mmu_page_role {int dummy; } kvm_mmu_page_role ;
typedef  union kvm_mmu_extended_role {int dummy; } kvm_mmu_extended_role ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pte_list_desc {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SLAB_ACCOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  kvm_total_used_mmu_pages ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* mmu_page_header_cache ; 
 int /*<<< orphan*/  mmu_shrinker ; 
 int nx_huge_pages ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* pte_list_desc_cache ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(void)
{
	int ret = -ENOMEM;

	if (nx_huge_pages == -1)
		FUNC1(FUNC2());

	/*
	 * MMU roles use union aliasing which is, generally speaking, an
	 * undefined behavior. However, we supposedly know how compilers behave
	 * and the current status quo is unlikely to change. Guardians below are
	 * supposed to let us know if the assumption becomes false.
	 */
	FUNC0(sizeof(union kvm_mmu_page_role) != sizeof(u32));
	FUNC0(sizeof(union kvm_mmu_extended_role) != sizeof(u32));
	FUNC0(sizeof(union kvm_mmu_role) != sizeof(u64));

	FUNC4();

	FUNC5();

	pte_list_desc_cache = FUNC3("pte_list_desc",
					    sizeof(struct pte_list_desc),
					    0, SLAB_ACCOUNT, NULL);
	if (!pte_list_desc_cache)
		goto out;

	mmu_page_header_cache = FUNC3("kvm_mmu_page_header",
						  sizeof(struct kvm_mmu_page),
						  0, SLAB_ACCOUNT, NULL);
	if (!mmu_page_header_cache)
		goto out;

	if (FUNC7(&kvm_total_used_mmu_pages, 0, GFP_KERNEL))
		goto out;

	ret = FUNC8(&mmu_shrinker);
	if (ret)
		goto out;

	return 0;

out:
	FUNC6();
	return ret;
}