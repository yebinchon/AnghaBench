
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int flags; int mm; } ;


 int PF_VCPU ;
 int check_switch_mmu_context (int ) ;
 TYPE_1__* current ;
 int ehb () ;
 int kvm_lose_fpu (struct kvm_vcpu*) ;
 int kvm_mips_resume_mm (int) ;

__attribute__((used)) static int kvm_trap_emul_vcpu_put(struct kvm_vcpu *vcpu, int cpu)
{
 kvm_lose_fpu(vcpu);

 if (current->flags & PF_VCPU) {

  check_switch_mmu_context(current->mm);
  kvm_mips_resume_mm(cpu);
  ehb();
 }

 return 0;
}
