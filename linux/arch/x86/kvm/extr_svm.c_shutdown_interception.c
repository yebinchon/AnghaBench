
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_run* run; } ;
struct vcpu_svm {int vmcb; TYPE_1__ vcpu; } ;
struct kvm_run {int exit_reason; } ;


 int KVM_EXIT_SHUTDOWN ;
 int clear_page (int ) ;
 int init_vmcb (struct vcpu_svm*) ;

__attribute__((used)) static int shutdown_interception(struct vcpu_svm *svm)
{
 struct kvm_run *kvm_run = svm->vcpu.run;





 clear_page(svm->vmcb);
 init_vmcb(svm);

 kvm_run->exit_reason = KVM_EXIT_SHUTDOWN;
 return 0;
}
