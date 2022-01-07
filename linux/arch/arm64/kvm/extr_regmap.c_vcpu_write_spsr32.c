
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sysregs_loaded_on_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {unsigned long* spsr; } ;







 int SYS_SPSR ;
 int spsr_abt ;
 int spsr_fiq ;
 int spsr_irq ;
 int spsr_und ;
 TYPE_2__* vcpu_gp_regs (struct kvm_vcpu*) ;
 int vcpu_spsr32_mode (struct kvm_vcpu*) ;
 int write_sysreg (unsigned long,int ) ;
 int write_sysreg_el1 (unsigned long,int ) ;

void vcpu_write_spsr32(struct kvm_vcpu *vcpu, unsigned long v)
{
 int spsr_idx = vcpu_spsr32_mode(vcpu);

 if (!vcpu->arch.sysregs_loaded_on_cpu) {
  vcpu_gp_regs(vcpu)->spsr[spsr_idx] = v;
  return;
 }

 switch (spsr_idx) {
 case 129:
  write_sysreg_el1(v, SYS_SPSR);
  break;
 case 132:
  write_sysreg(v, spsr_abt);
  break;
 case 128:
  write_sysreg(v, spsr_und);
  break;
 case 130:
  write_sysreg(v, spsr_irq);
  break;
 case 131:
  write_sysreg(v, spsr_fiq);
  break;
 }
}
