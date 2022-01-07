
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;


 int kvm_vz_check_requests (struct kvm_vcpu*,int) ;
 int kvm_vz_vcpu_load_tlb (struct kvm_vcpu*,int) ;
 int kvm_vz_vcpu_load_wired (struct kvm_vcpu*) ;
 int kvm_vz_vcpu_save_wired (struct kvm_vcpu*) ;
 int smp_processor_id () ;

__attribute__((used)) static void kvm_vz_vcpu_reenter(struct kvm_run *run, struct kvm_vcpu *vcpu)
{
 int cpu = smp_processor_id();
 int preserve_guest_tlb;

 preserve_guest_tlb = kvm_vz_check_requests(vcpu, cpu);

 if (preserve_guest_tlb)
  kvm_vz_vcpu_save_wired(vcpu);

 kvm_vz_vcpu_load_tlb(vcpu, cpu);

 if (preserve_guest_tlb)
  kvm_vz_vcpu_load_wired(vcpu);
}
