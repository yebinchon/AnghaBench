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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int /*<<< orphan*/  Rt1; scalar_t__ is_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_PTIMER ; 
 int /*<<< orphan*/  TIMER_REG_TVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu,
			     const struct coproc_params *p,
			     const struct coproc_reg *r)
{
	u32 val;

	if (p->is_write) {
		val = *FUNC2(vcpu, p->Rt1);
		FUNC1(vcpu,
					   TIMER_PTIMER, TIMER_REG_TVAL, val);
	} else {
		val = FUNC0(vcpu,
						TIMER_PTIMER, TIMER_REG_TVAL);
		*FUNC2(vcpu, p->Rt1) = val;
	}

	return true;
}