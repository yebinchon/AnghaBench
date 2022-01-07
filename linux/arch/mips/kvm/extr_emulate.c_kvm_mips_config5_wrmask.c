
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int arch; } ;


 unsigned int MIPS_CONF5_FRE ;
 unsigned int MIPS_CONF5_MSAEN ;
 scalar_t__ cpu_has_fre ;
 scalar_t__ kvm_mips_guest_has_fpu (int *) ;
 scalar_t__ kvm_mips_guest_has_msa (int *) ;

unsigned int kvm_mips_config5_wrmask(struct kvm_vcpu *vcpu)
{
 unsigned int mask = 0;


 if (kvm_mips_guest_has_msa(&vcpu->arch))
  mask |= MIPS_CONF5_MSAEN;





 if (kvm_mips_guest_has_fpu(&vcpu->arch)) {
  if (cpu_has_fre)
   mask |= MIPS_CONF5_FRE;

 }

 return mask;
}
