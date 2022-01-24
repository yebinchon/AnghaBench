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
struct sys_reg_params {int /*<<< orphan*/  regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;
typedef  enum kvm_arch_timer_regs { ____Placeholder_kvm_arch_timer_regs } kvm_arch_timer_regs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  SYS_AARCH32_CNTP_CTL 133 
#define  SYS_AARCH32_CNTP_CVAL 132 
#define  SYS_AARCH32_CNTP_TVAL 131 
#define  SYS_CNTP_CTL_EL0 130 
#define  SYS_CNTP_CVAL_EL0 129 
#define  SYS_CNTP_TVAL_EL0 128 
 int TIMER_PTIMER ; 
 int TIMER_REG_CTL ; 
 int TIMER_REG_CVAL ; 
 int TIMER_REG_TVAL ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sys_reg_desc const*) ; 

__attribute__((used)) static bool FUNC4(struct kvm_vcpu *vcpu,
			      struct sys_reg_params *p,
			      const struct sys_reg_desc *r)
{
	enum kvm_arch_timers tmr;
	enum kvm_arch_timer_regs treg;
	u64 reg = FUNC3(r);

	switch (reg) {
	case SYS_CNTP_TVAL_EL0:
	case SYS_AARCH32_CNTP_TVAL:
		tmr = TIMER_PTIMER;
		treg = TIMER_REG_TVAL;
		break;
	case SYS_CNTP_CTL_EL0:
	case SYS_AARCH32_CNTP_CTL:
		tmr = TIMER_PTIMER;
		treg = TIMER_REG_CTL;
		break;
	case SYS_CNTP_CVAL_EL0:
	case SYS_AARCH32_CNTP_CVAL:
		tmr = TIMER_PTIMER;
		treg = TIMER_REG_CVAL;
		break;
	default:
		FUNC0();
	}

	if (p->is_write)
		FUNC2(vcpu, tmr, treg, p->regval);
	else
		p->regval = FUNC1(vcpu, tmr, treg);

	return true;
}