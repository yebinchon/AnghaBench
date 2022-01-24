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
struct TYPE_4__ {int need_vmcs12_to_shadow_sync; TYPE_1__* hv_evmcs; scalar_t__ enlightened_vmcs_enabled; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hv_clean_fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 struct vcpu_vmx* FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC3(vcpu);

	/*
	 * hv_evmcs may end up being not mapped after migration (when
	 * L2 was running), map it here to make sure vmcs12 changes are
	 * properly reflected.
	 */
	if (vmx->nested.enlightened_vmcs_enabled && !vmx->nested.hv_evmcs)
		FUNC2(vcpu, false);

	if (vmx->nested.hv_evmcs) {
		FUNC0(vmx);
		/* All fields are clean */
		vmx->nested.hv_evmcs->hv_clean_fields |=
			HV_VMX_ENLIGHTENED_CLEAN_FIELD_ALL;
	} else {
		FUNC1(vmx);
	}

	vmx->nested.need_vmcs12_to_shadow_sync = false;
}