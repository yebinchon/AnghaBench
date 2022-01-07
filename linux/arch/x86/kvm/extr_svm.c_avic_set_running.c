
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int avic_is_running; } ;
struct kvm_vcpu {int cpu; } ;


 int avic_vcpu_load (struct kvm_vcpu*,int ) ;
 int avic_vcpu_put (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void avic_set_running(struct kvm_vcpu *vcpu, bool is_run)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->avic_is_running = is_run;
 if (is_run)
  avic_vcpu_load(vcpu, vcpu->cpu);
 else
  avic_vcpu_put(vcpu);
}
