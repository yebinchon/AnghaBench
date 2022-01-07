
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int Rt1; scalar_t__ is_write; } ;


 int TIMER_PTIMER ;
 int TIMER_REG_CTL ;
 int kvm_arm_timer_read_sysreg (struct kvm_vcpu*,int ,int ) ;
 int kvm_arm_timer_write_sysreg (struct kvm_vcpu*,int ,int ,int ) ;
 int * vcpu_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool access_cntp_ctl(struct kvm_vcpu *vcpu,
       const struct coproc_params *p,
       const struct coproc_reg *r)
{
 u32 val;

 if (p->is_write) {
  val = *vcpu_reg(vcpu, p->Rt1);
  kvm_arm_timer_write_sysreg(vcpu,
        TIMER_PTIMER, TIMER_REG_CTL, val);
 } else {
  val = kvm_arm_timer_read_sysreg(vcpu,
      TIMER_PTIMER, TIMER_REG_CTL);
  *vcpu_reg(vcpu, p->Rt1) = val;
 }

 return 1;
}
