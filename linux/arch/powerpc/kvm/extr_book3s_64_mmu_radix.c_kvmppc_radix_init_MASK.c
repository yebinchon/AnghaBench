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

/* Variables and functions */
 int ENOMEM ; 
 int RADIX_PMD_INDEX_SIZE ; 
 int RADIX_PTE_INDEX_SIZE ; 
 void* FUNC0 (char*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* kvm_pmd_cache ; 
 void* kvm_pte_cache ; 
 int /*<<< orphan*/  pmd_ctor ; 
 int /*<<< orphan*/  pte_ctor ; 

int FUNC2(void)
{
	unsigned long size = sizeof(void *) << RADIX_PTE_INDEX_SIZE;

	kvm_pte_cache = FUNC0("kvm-pte", size, size, 0, pte_ctor);
	if (!kvm_pte_cache)
		return -ENOMEM;

	size = sizeof(void *) << RADIX_PMD_INDEX_SIZE;

	kvm_pmd_cache = FUNC0("kvm-pmd", size, size, 0, pmd_ctor);
	if (!kvm_pmd_cache) {
		FUNC1(kvm_pte_cache);
		return -ENOMEM;
	}

	return 0;
}