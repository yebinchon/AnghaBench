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
struct TYPE_2__ {struct kvm_cpu_context* host_cpu_context; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_cpu_context {int /*<<< orphan*/  sys_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDA ; 
 int /*<<< orphan*/  APDB ; 
 int /*<<< orphan*/  APGA ; 
 int /*<<< orphan*/  APIA ; 
 int /*<<< orphan*/  APIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm_cpu_context *ctxt;

	if (FUNC2(vcpu)) {
		FUNC3(vcpu);
		ctxt = vcpu->arch.host_cpu_context;
		FUNC0(ctxt->sys_regs, APIA);
		FUNC0(ctxt->sys_regs, APIB);
		FUNC0(ctxt->sys_regs, APDA);
		FUNC0(ctxt->sys_regs, APDB);
		FUNC0(ctxt->sys_regs, APGA);
	} else {
		FUNC1(vcpu);
	}
}