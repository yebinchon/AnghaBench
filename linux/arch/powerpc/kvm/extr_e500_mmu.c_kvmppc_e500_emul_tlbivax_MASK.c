#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvmppc_vcpu_e500 {int /*<<< orphan*/  vcpu; TYPE_1__* gtlb_params; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int gva_t ;
struct TYPE_2__ {int entries; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcpu_e500*,int,int) ; 
 int FUNC3 (struct kvmppc_vcpu_e500*,int,int,int /*<<< orphan*/ ,int) ; 
 struct kvmppc_vcpu_e500* FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu, gva_t ea)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC4(vcpu);
	unsigned int ia;
	int esel, tlbsel;

	ia = (ea >> 2) & 0x1;

	/* since we only have two TLBs, only lower bit is used. */
	tlbsel = (ea >> 3) & 0x1;

	if (ia) {
		/* invalidate all entries */
		for (esel = 0; esel < vcpu_e500->gtlb_params[tlbsel].entries;
		     esel++)
			FUNC2(vcpu_e500, tlbsel, esel);
	} else {
		ea &= 0xfffff000;
		esel = FUNC3(vcpu_e500, ea, tlbsel,
				FUNC0(vcpu), -1);
		if (esel >= 0)
			FUNC2(vcpu_e500, tlbsel, esel);
	}

	/* Invalidate all host shadow mappings */
	FUNC1(&vcpu_e500->vcpu);

	return EMULATE_DONE;
}