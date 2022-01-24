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
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 unsigned long HPTE_GR_RESERVED ; 
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_R ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_VALID ; 
 long H_FUNCTION ; 
 long H_PARAMETER ; 
 unsigned long H_READ_4 ; 
 long H_SUCCESS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (struct kvm*) ; 
 unsigned long FUNC5 (TYPE_4__*) ; 
 struct revmap_entry* FUNC6 (int /*<<< orphan*/ *) ; 

long FUNC7(struct kvm_vcpu *vcpu, unsigned long flags,
		   unsigned long pte_index)
{
	struct kvm *kvm = vcpu->kvm;
	__be64 *hpte;
	unsigned long v, r;
	int i, n = 1;
	struct revmap_entry *rev = NULL;

	if (FUNC4(kvm))
		return H_FUNCTION;
	if (pte_index >= FUNC5(&kvm->arch.hpt))
		return H_PARAMETER;
	if (flags & H_READ_4) {
		pte_index &= ~3;
		n = 4;
	}
	rev = FUNC6(&kvm->arch.hpt.rev[pte_index]);
	for (i = 0; i < n; ++i, ++pte_index) {
		hpte = (__be64 *)(kvm->arch.hpt.virt + (pte_index << 4));
		v = FUNC0(hpte[0]) & ~HPTE_V_HVLOCK;
		r = FUNC0(hpte[1]);
		if (FUNC1(CPU_FTR_ARCH_300)) {
			v = FUNC3(v, r);
			r = FUNC2(r);
		}
		if (v & HPTE_V_ABSENT) {
			v &= ~HPTE_V_ABSENT;
			v |= HPTE_V_VALID;
		}
		if (v & HPTE_V_VALID) {
			r = rev[i].guest_rpte | (r & (HPTE_R_R | HPTE_R_C));
			r &= ~HPTE_GR_RESERVED;
		}
		vcpu->arch.regs.gpr[4 + i * 2] = v;
		vcpu->arch.regs.gpr[5 + i * 2] = r;
	}
	return H_SUCCESS;
}