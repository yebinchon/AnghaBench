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
struct sys_reg_params {int is_aarch32; int is_32bit; unsigned long Op0; unsigned long Op1; unsigned long CRn; unsigned long CRm; unsigned long Op2; int is_write; int /*<<< orphan*/  regval; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,struct sys_reg_params*) ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	struct sys_reg_params params;
	unsigned long esr = FUNC1(vcpu);
	int Rt = FUNC2(vcpu);
	int ret;

	FUNC3(esr);

	params.is_aarch32 = false;
	params.is_32bit = false;
	params.Op0 = (esr >> 20) & 3;
	params.Op1 = (esr >> 14) & 0x7;
	params.CRn = (esr >> 10) & 0xf;
	params.CRm = (esr >> 1) & 0xf;
	params.Op2 = (esr >> 17) & 0x7;
	params.regval = FUNC4(vcpu, Rt);
	params.is_write = !(esr & 1);

	ret = FUNC0(vcpu, &params);

	if (!params.is_write)
		FUNC5(vcpu, Rt, params.regval);
	return ret;
}