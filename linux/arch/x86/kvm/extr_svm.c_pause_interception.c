
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct vcpu_svm {struct kvm_vcpu vcpu; } ;


 int grow_ple_window (struct kvm_vcpu*) ;
 int kvm_vcpu_on_spin (struct kvm_vcpu*,int) ;
 scalar_t__ pause_filter_thresh ;
 scalar_t__ svm_get_cpl (struct kvm_vcpu*) ;

__attribute__((used)) static int pause_interception(struct vcpu_svm *svm)
{
 struct kvm_vcpu *vcpu = &svm->vcpu;
 bool in_kernel = (svm_get_cpl(vcpu) == 0);

 if (pause_filter_thresh)
  grow_ple_window(vcpu);

 kvm_vcpu_on_spin(vcpu, in_kernel);
 return 1;
}
