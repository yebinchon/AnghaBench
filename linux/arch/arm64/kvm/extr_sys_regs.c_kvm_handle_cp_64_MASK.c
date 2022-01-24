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
typedef  int u32 ;
struct sys_reg_params {int is_aarch32; int is_32bit; int CRm; int is_write; int Op1; int regval; scalar_t__ CRn; scalar_t__ Op2; scalar_t__ Op0; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct sys_reg_params*,struct sys_reg_desc const*,size_t) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,struct sys_reg_params*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu,
			    const struct sys_reg_desc *global,
			    size_t nr_global,
			    const struct sys_reg_desc *target_specific,
			    size_t nr_specific)
{
	struct sys_reg_params params;
	u32 hsr = FUNC1(vcpu);
	int Rt = FUNC2(vcpu);
	int Rt2 = (hsr >> 10) & 0x1f;

	params.is_aarch32 = true;
	params.is_32bit = false;
	params.CRm = (hsr >> 1) & 0xf;
	params.is_write = ((hsr & 1) == 0);

	params.Op0 = 0;
	params.Op1 = (hsr >> 16) & 0xf;
	params.Op2 = 0;
	params.CRn = 0;

	/*
	 * Make a 64-bit value out of Rt and Rt2. As we use the same trap
	 * backends between AArch32 and AArch64, we get away with it.
	 */
	if (params.is_write) {
		params.regval = FUNC6(vcpu, Rt) & 0xffffffff;
		params.regval |= FUNC6(vcpu, Rt2) << 32;
	}

	/*
	 * Try to emulate the coprocessor access using the target
	 * specific table first, and using the global table afterwards.
	 * If either of the tables contains a handler, handle the
	 * potential register operation in the case of a read and return
	 * with success.
	 */
	if (!FUNC0(vcpu, &params, target_specific, nr_specific) ||
	    !FUNC0(vcpu, &params, global, nr_global)) {
		/* Split up the value between registers for the read side */
		if (!params.is_write) {
			FUNC7(vcpu, Rt, FUNC3(params.regval));
			FUNC7(vcpu, Rt2, FUNC5(params.regval));
		}

		return 1;
	}

	FUNC4(vcpu, &params);
	return 1;
}