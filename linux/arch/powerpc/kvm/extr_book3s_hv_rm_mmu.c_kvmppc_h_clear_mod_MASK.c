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
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_R ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_VALID ; 
 long H_FUNCTION ; 
 long H_NOT_FOUND ; 
 long H_PARAMETER ; 
 long H_SUCCESS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct kvm*) ; 
 unsigned long FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,struct revmap_entry*) ; 
 struct revmap_entry* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

long FUNC12(struct kvm_vcpu *vcpu, unsigned long flags,
			unsigned long pte_index)
{
	struct kvm *kvm = vcpu->kvm;
	__be64 *hpte;
	unsigned long v, r, gr;
	struct revmap_entry *rev;
	long ret = H_NOT_FOUND;

	if (FUNC4(kvm))
		return H_FUNCTION;
	if (pte_index >= FUNC5(&kvm->arch.hpt))
		return H_PARAMETER;

	rev = FUNC9(&kvm->arch.hpt.rev[pte_index]);
	hpte = (__be64 *)(kvm->arch.hpt.virt + (pte_index << 4));
	while (!FUNC10(hpte, HPTE_V_HVLOCK))
		FUNC1();
	v = FUNC0(hpte[0]);
	r = FUNC0(hpte[1]);
	if (!(v & (HPTE_V_VALID | HPTE_V_ABSENT)))
		goto out;

	gr = rev->guest_rpte;
	if (gr & HPTE_R_C) {
		rev->guest_rpte &= ~HPTE_R_C;
		FUNC8(kvm, rev);
	}
	if (v & HPTE_V_VALID) {
		/* need to make it temporarily absent so C is stable */
		hpte[0] |= FUNC2(HPTE_V_ABSENT);
		FUNC6(kvm, hpte, pte_index);
		r = FUNC0(hpte[1]);
		gr |= r & (HPTE_R_R | HPTE_R_C);
		if (r & HPTE_R_C) {
			hpte[1] = FUNC2(r & ~HPTE_R_C);
			FUNC3();
			FUNC7(kvm, v, gr);
		}
	}
	vcpu->arch.regs.gpr[4] = gr;
	ret = H_SUCCESS;
 out:
	FUNC11(hpte, v & ~HPTE_V_HVLOCK);
	return ret;
}