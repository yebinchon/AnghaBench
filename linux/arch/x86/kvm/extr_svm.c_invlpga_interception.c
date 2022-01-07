
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct vcpu_svm {struct kvm_vcpu vcpu; TYPE_2__* vmcb; } ;
struct TYPE_3__ {int rip; } ;
struct TYPE_4__ {TYPE_1__ save; } ;


 int kvm_mmu_invlpg (struct kvm_vcpu*,int ) ;
 int kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_invlpga (int ,int ,int ) ;

__attribute__((used)) static int invlpga_interception(struct vcpu_svm *svm)
{
 struct kvm_vcpu *vcpu = &svm->vcpu;

 trace_kvm_invlpga(svm->vmcb->save.rip, kvm_rcx_read(&svm->vcpu),
     kvm_rax_read(&svm->vcpu));


 kvm_mmu_invlpg(vcpu, kvm_rax_read(&svm->vcpu));

 return kvm_skip_emulated_instruction(&svm->vcpu);
}
