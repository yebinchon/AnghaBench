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
struct TYPE_8__ {int /*<<< orphan*/  function; } ;
struct TYPE_7__ {int vmcs02_initialized; int vmxon; int /*<<< orphan*/  vmcs02; void* cached_vmcs12; void* cached_shadow_vmcs12; int /*<<< orphan*/  vpid02; TYPE_4__ preemption_timer; } ;
struct TYPE_5__ {scalar_t__ ctl; } ;
struct TYPE_6__ {TYPE_1__ guest; } ;
struct vcpu_vmx {TYPE_3__ nested; TYPE_2__ pt_desc; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 scalar_t__ PT_MODE_HOST_GUEST ; 
 int /*<<< orphan*/  VMCS12_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ enable_shadow_vmcs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pt_mode ; 
 int /*<<< orphan*/  FUNC7 (struct vcpu_vmx*) ; 
 struct vcpu_vmx* FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  vmx_preemption_timer_fn ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC8(vcpu);
	int r;

	r = FUNC0(&vmx->nested.vmcs02);
	if (r < 0)
		goto out_vmcs02;

	vmx->nested.cached_vmcs12 = FUNC6(VMCS12_SIZE, GFP_KERNEL_ACCOUNT);
	if (!vmx->nested.cached_vmcs12)
		goto out_cached_vmcs12;

	vmx->nested.cached_shadow_vmcs12 = FUNC6(VMCS12_SIZE, GFP_KERNEL_ACCOUNT);
	if (!vmx->nested.cached_shadow_vmcs12)
		goto out_cached_shadow_vmcs12;

	if (enable_shadow_vmcs && !FUNC1(vcpu))
		goto out_shadow_vmcs;

	FUNC4(&vmx->nested.preemption_timer, CLOCK_MONOTONIC,
		     HRTIMER_MODE_REL_PINNED);
	vmx->nested.preemption_timer.function = vmx_preemption_timer_fn;

	vmx->nested.vpid02 = FUNC2();

	vmx->nested.vmcs02_initialized = false;
	vmx->nested.vmxon = true;

	if (pt_mode == PT_MODE_HOST_GUEST) {
		vmx->pt_desc.guest.ctl = 0;
		FUNC7(vmx);
	}

	return 0;

out_shadow_vmcs:
	FUNC5(vmx->nested.cached_shadow_vmcs12);

out_cached_shadow_vmcs12:
	FUNC5(vmx->nested.cached_vmcs12);

out_cached_vmcs12:
	FUNC3(&vmx->nested.vmcs02);

out_vmcs02:
	return -ENOMEM;
}