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
struct TYPE_4__ {scalar_t__ vector; int /*<<< orphan*/  error_code; scalar_t__ error_code_valid; } ;
struct x86_emulate_ctxt {TYPE_2__ exception; } ;
struct TYPE_3__ {struct x86_emulate_ctxt emulate_ctxt; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ PF_VECTOR ; 
 int FUNC0 (struct kvm_vcpu*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu)
{
	struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
	if (ctxt->exception.vector == PF_VECTOR)
		return FUNC0(vcpu, &ctxt->exception);

	if (ctxt->exception.error_code_valid)
		FUNC2(vcpu, ctxt->exception.vector,
				      ctxt->exception.error_code);
	else
		FUNC1(vcpu, ctxt->exception.vector);
	return false;
}