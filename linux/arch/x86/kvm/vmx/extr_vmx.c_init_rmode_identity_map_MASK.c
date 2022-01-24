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
typedef  int u32 ;
typedef  int /*<<< orphan*/  tmp ;
struct kvm_vmx {int ept_identity_pagetable_done; int ept_identity_map_addr; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  srcu; } ;
typedef  int kvm_pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDENTITY_PAGETABLE_PRIVATE_MEMSLOT ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PT32_ENT_PER_PAGE ; 
 int VMX_EPT_IDENTITY_PAGETABLE_ADDR ; 
 int _PAGE_ACCESSED ; 
 int _PAGE_DIRTY ; 
 int _PAGE_PRESENT ; 
 int _PAGE_PSE ; 
 int _PAGE_RW ; 
 int _PAGE_USER ; 
 int FUNC0 (struct kvm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm*,int,int*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct kvm_vmx* FUNC8 (struct kvm*) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm)
{
	struct kvm_vmx *kvm_vmx = FUNC8(kvm);
	int i, idx, r = 0;
	kvm_pfn_t identity_map_pfn;
	u32 tmp;

	/* Protect kvm_vmx->ept_identity_pagetable_done. */
	FUNC4(&kvm->slots_lock);

	if (FUNC3(kvm_vmx->ept_identity_pagetable_done))
		goto out2;

	if (!kvm_vmx->ept_identity_map_addr)
		kvm_vmx->ept_identity_map_addr = VMX_EPT_IDENTITY_PAGETABLE_ADDR;
	identity_map_pfn = kvm_vmx->ept_identity_map_addr >> PAGE_SHIFT;

	r = FUNC0(kvm, IDENTITY_PAGETABLE_PRIVATE_MEMSLOT,
				    kvm_vmx->ept_identity_map_addr, PAGE_SIZE);
	if (r < 0)
		goto out2;

	idx = FUNC6(&kvm->srcu);
	r = FUNC1(kvm, identity_map_pfn, 0, PAGE_SIZE);
	if (r < 0)
		goto out;
	/* Set up identity-mapping pagetable for EPT in real mode */
	for (i = 0; i < PT32_ENT_PER_PAGE; i++) {
		tmp = (i << 22) + (_PAGE_PRESENT | _PAGE_RW | _PAGE_USER |
			_PAGE_ACCESSED | _PAGE_DIRTY | _PAGE_PSE);
		r = FUNC2(kvm, identity_map_pfn,
				&tmp, i * sizeof(tmp), sizeof(tmp));
		if (r < 0)
			goto out;
	}
	kvm_vmx->ept_identity_pagetable_done = true;

out:
	FUNC7(&kvm->srcu, idx);

out2:
	FUNC5(&kvm->slots_lock);
	return r;
}