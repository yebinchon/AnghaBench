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
struct x86_emulate_ctxt {int op_bytes; int ad_bytes; int /*<<< orphan*/  eflags; scalar_t__ eip; scalar_t__ _eip; } ;
struct TYPE_2__ {struct x86_emulate_ctxt emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_TRIPLE_FAULT ; 
 int X86EMUL_CONTINUE ; 
 int FUNC0 (struct x86_emulate_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

void FUNC5(struct kvm_vcpu *vcpu, int irq, int inc_eip)
{
	struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
	int ret;

	FUNC1(vcpu);

	ctxt->op_bytes = 2;
	ctxt->ad_bytes = 2;
	ctxt->_eip = ctxt->eip + inc_eip;
	ret = FUNC0(ctxt, irq);

	if (ret != X86EMUL_CONTINUE) {
		FUNC2(KVM_REQ_TRIPLE_FAULT, vcpu);
	} else {
		ctxt->eip = ctxt->_eip;
		FUNC3(vcpu, ctxt->eip);
		FUNC4(vcpu, ctxt->eflags);
	}
}