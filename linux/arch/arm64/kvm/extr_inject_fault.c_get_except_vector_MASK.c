#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;
typedef  enum exception_type { ____Placeholder_exception_type } exception_type ;

/* Variables and functions */
 int CURRENT_EL_SP_EL0_VECTOR ; 
 int CURRENT_EL_SP_ELx_VECTOR ; 
 int LOWER_EL_AArch32_VECTOR ; 
 int LOWER_EL_AArch64_VECTOR ; 
 int PSR_MODE32_BIT ; 
#define  PSR_MODE_EL0t 130 
#define  PSR_MODE_EL1h 129 
#define  PSR_MODE_EL1t 128 
 int PSR_MODE_MASK ; 
 int /*<<< orphan*/  VBAR_EL1 ; 
 int* FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC2(struct kvm_vcpu *vcpu, enum exception_type type)
{
	u64 exc_offset;

	switch (*FUNC0(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT)) {
	case PSR_MODE_EL1t:
		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
		break;
	case PSR_MODE_EL1h:
		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
		break;
	case PSR_MODE_EL0t:
		exc_offset = LOWER_EL_AArch64_VECTOR;
		break;
	default:
		exc_offset = LOWER_EL_AArch32_VECTOR;
	}

	return FUNC1(vcpu, VBAR_EL1) + exc_offset + type;
}