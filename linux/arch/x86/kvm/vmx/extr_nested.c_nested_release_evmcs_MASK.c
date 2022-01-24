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
struct TYPE_2__ {unsigned long long hv_evmcs_vmptr; int /*<<< orphan*/ * hv_evmcs; int /*<<< orphan*/  hv_evmcs_map; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ *,int) ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline void FUNC2(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC1(vcpu);

	if (!vmx->nested.hv_evmcs)
		return;

	FUNC0(vcpu, &vmx->nested.hv_evmcs_map, true);
	vmx->nested.hv_evmcs_vmptr = -1ull;
	vmx->nested.hv_evmcs = NULL;
}