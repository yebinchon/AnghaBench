
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int host_cp0_guestctl0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EINVAL ;
 unsigned int MIPS_GCTL0_GEXC ;
 unsigned int MIPS_GCTL0_GEXC_GPA ;
 unsigned int MIPS_GCTL0_GEXC_GVA ;
 unsigned int MIPS_GCTL0_GEXC_SHIFT ;
 scalar_t__ WARN (int,char*,unsigned int) ;
 int kvm_vz_gva_to_gpa (struct kvm_vcpu*,unsigned long,unsigned long*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int kvm_vz_badvaddr_to_gpa(struct kvm_vcpu *vcpu, unsigned long badvaddr,
      unsigned long *gpa)
{
 unsigned int gexccode = (vcpu->arch.host_cp0_guestctl0 &
     MIPS_GCTL0_GEXC) >> MIPS_GCTL0_GEXC_SHIFT;


 if (likely(gexccode == MIPS_GCTL0_GEXC_GPA)) {
  *gpa = badvaddr;
  return 0;
 }


 if (WARN(gexccode != MIPS_GCTL0_GEXC_GVA,
   "Unexpected gexccode %#x\n", gexccode))
  return -EINVAL;


 return kvm_vz_gva_to_gpa(vcpu, badvaddr, gpa);
}
