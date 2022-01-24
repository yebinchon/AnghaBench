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
typedef  scalar_t__ u32 ;
struct sys_reg_params {scalar_t__ is_write; } ;
struct sys_reg_desc {scalar_t__ Op2; scalar_t__ CRm; scalar_t__ CRn; scalar_t__ Op1; scalar_t__ Op0; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ID_AA64MMFR1_LOR_SHIFT ; 
 int /*<<< orphan*/  SYS_ID_AA64MMFR1_EL1 ; 
 scalar_t__ SYS_LORID_EL1 ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 
 int FUNC4 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*) ; 

__attribute__((used)) static bool FUNC5(struct kvm_vcpu *vcpu,
			  struct sys_reg_params *p,
			  const struct sys_reg_desc *r)
{
	u64 val = FUNC1(SYS_ID_AA64MMFR1_EL1);
	u32 sr = FUNC2((u32)r->Op0, (u32)r->Op1,
			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);

	if (!(val & (0xfUL << ID_AA64MMFR1_LOR_SHIFT))) {
		FUNC0(vcpu);
		return false;
	}

	if (p->is_write && sr == SYS_LORID_EL1)
		return FUNC4(vcpu, p, r);

	return FUNC3(vcpu, p, r);
}