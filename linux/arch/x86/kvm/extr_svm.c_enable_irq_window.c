
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ gif_set (struct vcpu_svm*) ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 scalar_t__ nested_svm_intr (struct vcpu_svm*) ;
 int svm_inject_irq (struct vcpu_svm*,int) ;
 int svm_set_vintr (struct vcpu_svm*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 scalar_t__ vgif_enabled (struct vcpu_svm*) ;

__attribute__((used)) static void enable_irq_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (kvm_vcpu_apicv_active(vcpu))
  return;
 if ((vgif_enabled(svm) || gif_set(svm)) && nested_svm_intr(svm)) {
  svm_set_vintr(svm);
  svm_inject_irq(svm, 0x0);
 }
}
