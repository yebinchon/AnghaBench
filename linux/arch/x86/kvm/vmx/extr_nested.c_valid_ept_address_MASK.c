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
typedef  int u64 ;
struct TYPE_3__ {int ept_caps; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int VMX_EPTP_AD_ENABLE_BIT ; 
 int VMX_EPTP_MT_MASK ; 
#define  VMX_EPTP_MT_UC 129 
#define  VMX_EPTP_MT_WB 128 
 int VMX_EPTP_PWL_4 ; 
 int VMX_EPTP_PWL_MASK ; 
 int VMX_EPTP_UC_BIT ; 
 int VMX_EPTP_WB_BIT ; 
 int VMX_EPT_AD_BIT ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu, u64 address)
{
	struct vcpu_vmx *vmx = FUNC2(vcpu);
	int maxphyaddr = FUNC1(vcpu);

	/* Check for memory type validity */
	switch (address & VMX_EPTP_MT_MASK) {
	case VMX_EPTP_MT_UC:
		if (FUNC0(!(vmx->nested.msrs.ept_caps & VMX_EPTP_UC_BIT)))
			return false;
		break;
	case VMX_EPTP_MT_WB:
		if (FUNC0(!(vmx->nested.msrs.ept_caps & VMX_EPTP_WB_BIT)))
			return false;
		break;
	default:
		return false;
	}

	/* only 4 levels page-walk length are valid */
	if (FUNC0((address & VMX_EPTP_PWL_MASK) != VMX_EPTP_PWL_4))
		return false;

	/* Reserved bits should not be set */
	if (FUNC0(address >> maxphyaddr || ((address >> 7) & 0x1f)))
		return false;

	/* AD, if set, should be supported */
	if (address & VMX_EPTP_AD_ENABLE_BIT) {
		if (FUNC0(!(vmx->nested.msrs.ept_caps & VMX_EPT_AD_BIT)))
			return false;
	}

	return true;
}