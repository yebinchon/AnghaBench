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
typedef  int u32 ;
struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ID_AA64DFR0_BRPS_SHIFT ; 
 int ID_AA64DFR0_CTX_CMPS_SHIFT ; 
 int ID_AA64DFR0_WRPS_SHIFT ; 
 int /*<<< orphan*/  ID_AA64PFR0_EL3_SHIFT ; 
 int /*<<< orphan*/  SYS_ID_AA64DFR0_EL1 ; 
 int /*<<< orphan*/  SYS_ID_AA64PFR0_EL1 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,struct sys_reg_params*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu,
			struct sys_reg_params *p,
			const struct sys_reg_desc *r)
{
	if (p->is_write) {
		return FUNC1(vcpu, p);
	} else {
		u64 dfr = FUNC2(SYS_ID_AA64DFR0_EL1);
		u64 pfr = FUNC2(SYS_ID_AA64PFR0_EL1);
		u32 el3 = !!FUNC0(pfr, ID_AA64PFR0_EL3_SHIFT);

		p->regval = ((((dfr >> ID_AA64DFR0_WRPS_SHIFT) & 0xf) << 28) |
			     (((dfr >> ID_AA64DFR0_BRPS_SHIFT) & 0xf) << 24) |
			     (((dfr >> ID_AA64DFR0_CTX_CMPS_SHIFT) & 0xf) << 20)
			     | (6 << 16) | (el3 << 14) | (el3 << 12));
		return true;
	}
}