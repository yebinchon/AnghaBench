
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int arch; } ;
struct TYPE_4__ {int fpu_id; } ;
struct TYPE_3__ {scalar_t__ (* num_regs ) (struct kvm_vcpu*) ;} ;


 int ARRAY_SIZE (int ) ;
 int MIPS_FPIR_F64 ;
 TYPE_2__ boot_cpu_data ;
 TYPE_1__* kvm_mips_callbacks ;
 int kvm_mips_get_one_regs ;
 int kvm_mips_get_one_regs_fpu ;
 int kvm_mips_get_one_regs_msa ;
 scalar_t__ kvm_mips_guest_can_have_fpu (int *) ;
 scalar_t__ kvm_mips_guest_can_have_msa (int *) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long kvm_mips_num_regs(struct kvm_vcpu *vcpu)
{
 unsigned long ret;

 ret = ARRAY_SIZE(kvm_mips_get_one_regs);
 if (kvm_mips_guest_can_have_fpu(&vcpu->arch)) {
  ret += ARRAY_SIZE(kvm_mips_get_one_regs_fpu) + 48;

  if (boot_cpu_data.fpu_id & MIPS_FPIR_F64)
   ret += 16;
 }
 if (kvm_mips_guest_can_have_msa(&vcpu->arch))
  ret += ARRAY_SIZE(kvm_mips_get_one_regs_msa) + 32;
 ret += kvm_mips_callbacks->num_regs(vcpu);

 return ret;
}
