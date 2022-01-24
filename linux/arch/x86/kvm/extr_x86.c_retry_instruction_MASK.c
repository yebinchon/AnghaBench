#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct x86_emulate_ctxt {unsigned long eip; } ;
struct TYPE_4__ {unsigned long last_retry_eip; unsigned long last_retry_addr; TYPE_1__* mmu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/  direct_map; } ;

/* Variables and functions */
 int EMULTYPE_ALLOW_RETRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct kvm_vcpu* FUNC1 (struct x86_emulate_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 unsigned long FUNC4 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct x86_emulate_ctxt*) ; 

__attribute__((used)) static bool FUNC7(struct x86_emulate_ctxt *ctxt,
			      unsigned long cr2,  int emulation_type)
{
	struct kvm_vcpu *vcpu = FUNC1(ctxt);
	unsigned long last_retry_eip, last_retry_addr, gpa = cr2;

	last_retry_eip = vcpu->arch.last_retry_eip;
	last_retry_addr = vcpu->arch.last_retry_addr;

	/*
	 * If the emulation is caused by #PF and it is non-page_table
	 * writing instruction, it means the VM-EXIT is caused by shadow
	 * page protected, we can zap the shadow page and retry this
	 * instruction directly.
	 *
	 * Note: if the guest uses a non-page-table modifying instruction
	 * on the PDE that points to the instruction, then we will unmap
	 * the instruction and go to an infinite loop. So, we cache the
	 * last retried eip and the last fault address, if we meet the eip
	 * and the address again, we can break out of the potential infinite
	 * loop.
	 */
	vcpu->arch.last_retry_eip = vcpu->arch.last_retry_addr = 0;

	if (!(emulation_type & EMULTYPE_ALLOW_RETRY))
		return false;

	if (FUNC0(FUNC3(vcpu)))
		return false;

	if (FUNC6(ctxt))
		return false;

	if (ctxt->eip == last_retry_eip && last_retry_addr == cr2)
		return false;

	vcpu->arch.last_retry_eip = ctxt->eip;
	vcpu->arch.last_retry_addr = cr2;

	if (!vcpu->arch.mmu->direct_map)
		gpa = FUNC4(vcpu, cr2, NULL);

	FUNC5(vcpu->kvm, FUNC2(gpa));

	return true;
}