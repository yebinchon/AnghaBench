
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sysregs_loaded_on_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {unsigned long* spsr; } ;


 int BUG () ;





 int SYS_SPSR ;
 unsigned long read_sysreg (int ) ;
 unsigned long read_sysreg_el1 (int ) ;
 int spsr_abt ;
 int spsr_fiq ;
 int spsr_irq ;
 int spsr_und ;
 TYPE_2__* vcpu_gp_regs (struct kvm_vcpu const*) ;
 int vcpu_spsr32_mode (struct kvm_vcpu const*) ;

unsigned long vcpu_read_spsr32(const struct kvm_vcpu *vcpu)
{
 int spsr_idx = vcpu_spsr32_mode(vcpu);

 if (!vcpu->arch.sysregs_loaded_on_cpu)
  return vcpu_gp_regs(vcpu)->spsr[spsr_idx];

 switch (spsr_idx) {
 case 129:
  return read_sysreg_el1(SYS_SPSR);
 case 132:
  return read_sysreg(spsr_abt);
 case 128:
  return read_sysreg(spsr_und);
 case 130:
  return read_sysreg(spsr_irq);
 case 131:
  return read_sysreg(spsr_fiq);
 default:
  BUG();
 }
}
