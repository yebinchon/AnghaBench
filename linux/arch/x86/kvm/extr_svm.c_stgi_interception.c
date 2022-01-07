
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int INTERCEPT_STGI ;
 int KVM_REQ_EVENT ;
 int clr_intercept (struct vcpu_svm*,int ) ;
 int enable_gif (struct vcpu_svm*) ;
 int kvm_make_request (int ,int *) ;
 int kvm_skip_emulated_instruction (int *) ;
 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 scalar_t__ vgif_enabled (struct vcpu_svm*) ;

__attribute__((used)) static int stgi_interception(struct vcpu_svm *svm)
{
 int ret;

 if (nested_svm_check_permissions(svm))
  return 1;





 if (vgif_enabled(svm))
  clr_intercept(svm, INTERCEPT_STGI);

 ret = kvm_skip_emulated_instruction(&svm->vcpu);
 kvm_make_request(KVM_REQ_EVENT, &svm->vcpu);

 enable_gif(svm);

 return ret;
}
