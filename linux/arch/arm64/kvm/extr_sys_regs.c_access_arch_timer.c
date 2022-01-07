
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_params {int regval; scalar_t__ is_write; } ;
struct sys_reg_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef enum kvm_arch_timers { ____Placeholder_kvm_arch_timers } kvm_arch_timers ;
typedef enum kvm_arch_timer_regs { ____Placeholder_kvm_arch_timer_regs } kvm_arch_timer_regs ;


 int BUG () ;






 int TIMER_PTIMER ;
 int TIMER_REG_CTL ;
 int TIMER_REG_CVAL ;
 int TIMER_REG_TVAL ;
 int kvm_arm_timer_read_sysreg (struct kvm_vcpu*,int,int) ;
 int kvm_arm_timer_write_sysreg (struct kvm_vcpu*,int,int,int ) ;
 int reg_to_encoding (struct sys_reg_desc const*) ;

__attribute__((used)) static bool access_arch_timer(struct kvm_vcpu *vcpu,
         struct sys_reg_params *p,
         const struct sys_reg_desc *r)
{
 enum kvm_arch_timers tmr;
 enum kvm_arch_timer_regs treg;
 u64 reg = reg_to_encoding(r);

 switch (reg) {
 case 128:
 case 131:
  tmr = TIMER_PTIMER;
  treg = TIMER_REG_TVAL;
  break;
 case 130:
 case 133:
  tmr = TIMER_PTIMER;
  treg = TIMER_REG_CTL;
  break;
 case 129:
 case 132:
  tmr = TIMER_PTIMER;
  treg = TIMER_REG_CVAL;
  break;
 default:
  BUG();
 }

 if (p->is_write)
  kvm_arm_timer_write_sysreg(vcpu, tmr, treg, p->regval);
 else
  p->regval = kvm_arm_timer_read_sysreg(vcpu, tmr, treg);

 return 1;
}
