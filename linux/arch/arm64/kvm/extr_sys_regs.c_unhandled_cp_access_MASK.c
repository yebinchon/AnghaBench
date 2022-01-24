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
typedef  int u8 ;
struct sys_reg_params {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
#define  ESR_ELx_EC_CP14_64 131 
#define  ESR_ELx_EC_CP14_MR 130 
#define  ESR_ELx_EC_CP15_32 129 
#define  ESR_ELx_EC_CP15_64 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct sys_reg_params*) ; 
 int /*<<< orphan*/ * FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC6 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu,
				struct sys_reg_params *params)
{
	u8 hsr_ec = FUNC3(vcpu);
	int cp = -1;

	switch(hsr_ec) {
	case ESR_ELx_EC_CP15_32:
	case ESR_ELx_EC_CP15_64:
		cp = 15;
		break;
	case ESR_ELx_EC_CP14_MR:
	case ESR_ELx_EC_CP14_64:
		cp = 14;
		break;
	default:
		FUNC0(1);
	}

	FUNC1("Unsupported guest CP%d access at: %08lx [%08lx]\n",
		cp, *FUNC6(vcpu), *FUNC5(vcpu));
	FUNC4(params);
	FUNC2(vcpu);
}