
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {int vcpu; TYPE_2__* vmcb; } ;
struct TYPE_3__ {int exit_info_1; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int X86_FEATURE_DECODEASSISTS ;
 int kvm_emulate_instruction (int *,int ) ;
 int kvm_mmu_invlpg (int *,int ) ;
 int kvm_skip_emulated_instruction (int *) ;
 int static_cpu_has (int ) ;

__attribute__((used)) static int invlpg_interception(struct vcpu_svm *svm)
{
 if (!static_cpu_has(X86_FEATURE_DECODEASSISTS))
  return kvm_emulate_instruction(&svm->vcpu, 0);

 kvm_mmu_invlpg(&svm->vcpu, svm->vmcb->control.exit_info_1);
 return kvm_skip_emulated_instruction(&svm->vcpu);
}
