#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  vm86_active; } ;
struct TYPE_7__ {scalar_t__ nested_run_pending; } ;
struct vcpu_vmx {TYPE_2__ rmode; scalar_t__ emulation_required; int /*<<< orphan*/  vcpu; TYPE_1__ nested; } ;
struct TYPE_9__ {scalar_t__ pending; } ;
struct TYPE_12__ {scalar_t__ halt_request; TYPE_3__ exception; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_5__* run; } ;
struct TYPE_10__ {scalar_t__ ndata; int /*<<< orphan*/  suberror; } ;
struct TYPE_11__ {TYPE_4__ internal; int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int CPU_BASED_VIRTUAL_INTR_PENDING ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  KVM_INTERNAL_ERROR_EMULATION ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct vcpu_vmx*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC9 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC11(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC9(vcpu);
	bool intr_window_requested;
	unsigned count = 130;

	/*
	 * We should never reach the point where we are emulating L2
	 * due to invalid guest state as that means we incorrectly
	 * allowed a nested VMEntry with an invalid vmcs12.
	 */
	FUNC0(vmx->emulation_required && vmx->nested.nested_run_pending);

	intr_window_requested = FUNC1(vmx) &
				CPU_BASED_VIRTUAL_INTR_PENDING;

	while (vmx->emulation_required && count-- != 0) {
		if (intr_window_requested && FUNC10(vcpu))
			return FUNC2(&vmx->vcpu);

		if (FUNC4(KVM_REQ_EVENT, vcpu))
			return 1;

		if (!FUNC3(vcpu, 0))
			return 0;

		if (vmx->emulation_required && !vmx->rmode.vm86_active &&
		    vcpu->arch.exception.pending) {
			vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
			vcpu->run->internal.suberror =
						KVM_INTERNAL_ERROR_EMULATION;
			vcpu->run->internal.ndata = 0;
			return 0;
		}

		if (vcpu->arch.halt_request) {
			vcpu->arch.halt_request = 0;
			return FUNC5(vcpu);
		}

		/*
		 * Note, return 1 and not 0, vcpu_run() is responsible for
		 * morphing the pending signal into the proper return code.
		 */
		if (FUNC8(current))
			return 1;

		if (FUNC6())
			FUNC7();
	}

	return 1;
}