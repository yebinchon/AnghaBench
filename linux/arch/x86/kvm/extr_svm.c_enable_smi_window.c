
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int INTERCEPT_STGI ;
 int gif_set (struct vcpu_svm*) ;
 int set_intercept (struct vcpu_svm*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 scalar_t__ vgif_enabled (struct vcpu_svm*) ;

__attribute__((used)) static int enable_smi_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (!gif_set(svm)) {
  if (vgif_enabled(svm))
   set_intercept(svm, INTERCEPT_STGI);

  return 1;
 }
 return 0;
}
