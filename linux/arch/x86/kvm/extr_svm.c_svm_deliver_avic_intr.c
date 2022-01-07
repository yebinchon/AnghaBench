
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {int cpu; TYPE_1__ arch; } ;


 int SVM_AVIC_DOORBELL ;
 scalar_t__ avic_vcpu_is_running (struct kvm_vcpu*) ;
 int get_cpu () ;
 int kvm_cpu_get_apicid (int) ;
 int kvm_lapic_set_irr (int,int ) ;
 int kvm_vcpu_wake_up (struct kvm_vcpu*) ;
 int put_cpu () ;
 int smp_mb__after_atomic () ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void svm_deliver_avic_intr(struct kvm_vcpu *vcpu, int vec)
{
 kvm_lapic_set_irr(vec, vcpu->arch.apic);
 smp_mb__after_atomic();

 if (avic_vcpu_is_running(vcpu)) {
  int cpuid = vcpu->cpu;

  if (cpuid != get_cpu())
   wrmsrl(SVM_AVIC_DOORBELL, kvm_cpu_get_apicid(cpuid));
  put_cpu();
 } else
  kvm_vcpu_wake_up(vcpu);
}
