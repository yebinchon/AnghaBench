#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct revmap_entry {unsigned long guest_rpte; } ;
struct TYPE_6__ {unsigned long* gpr; } ;
struct TYPE_7__ {TYPE_2__ regs; } ;
struct kvm_vcpu {TYPE_3__ arch; struct kvm* kvm; } ;
struct TYPE_8__ {scalar_t__ virt; int /*<<< orphan*/ * rev; } ;
struct TYPE_5__ {TYPE_4__ hpt; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int HPTE_R_C ; 
 int HPTE_R_R ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_VALID ; 
 long H_FUNCTION ; 
 long H_NOT_FOUND ; 
 long H_PARAMETER ; 
 long H_SUCCESS ; 
 unsigned long KVMPPC_RMAP_REFERENCED ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,struct revmap_entry*) ; 
 struct revmap_entry* FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC8 (struct kvm*,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*) ; 

long FUNC12(struct kvm_vcpu *vcpu, unsigned long flags,
			unsigned long pte_index)
{
	struct kvm *kvm = vcpu->kvm;
	__be64 *hpte;
	unsigned long v, r, gr;
	struct revmap_entry *rev;
	unsigned long *rmap;
	long ret = H_NOT_FOUND;

	if (FUNC2(kvm))
		return H_FUNCTION;
	if (pte_index >= FUNC4(&kvm->arch.hpt))
		return H_PARAMETER;

	rev = FUNC7(&kvm->arch.hpt.rev[pte_index]);
	hpte = (__be64 *)(kvm->arch.hpt.virt + (pte_index << 4));
	while (!FUNC9(hpte, HPTE_V_HVLOCK))
		FUNC1();
	v = FUNC0(hpte[0]);
	r = FUNC0(hpte[1]);
	if (!(v & (HPTE_V_VALID | HPTE_V_ABSENT)))
		goto out;

	gr = rev->guest_rpte;
	if (rev->guest_rpte & HPTE_R_R) {
		rev->guest_rpte &= ~HPTE_R_R;
		FUNC6(kvm, rev);
	}
	if (v & HPTE_V_VALID) {
		gr |= r & (HPTE_R_R | HPTE_R_C);
		if (r & HPTE_R_R) {
			FUNC3(kvm, hpte, pte_index);
			rmap = FUNC8(kvm, v, gr, NULL, NULL);
			if (rmap) {
				FUNC5(rmap);
				*rmap |= KVMPPC_RMAP_REFERENCED;
				FUNC11(rmap);
			}
		}
	}
	vcpu->arch.regs.gpr[4] = gr;
	ret = H_SUCCESS;
 out:
	FUNC10(hpte, v & ~HPTE_V_HVLOCK);
	return ret;
}