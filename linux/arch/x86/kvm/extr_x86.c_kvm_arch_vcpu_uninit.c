
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pio_data; int mce_banks; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_2__* kvm; } ;
struct TYPE_4__ {int srcu; } ;


 int free_page (unsigned long) ;
 int kfree (int ) ;
 int kvm_free_lapic (struct kvm_vcpu*) ;
 int kvm_hv_vcpu_uninit (struct kvm_vcpu*) ;
 int kvm_mmu_destroy (struct kvm_vcpu*) ;
 int kvm_no_apic_vcpu ;
 int kvm_pmu_destroy (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int static_key_slow_dec (int *) ;

void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 int idx;

 kvm_hv_vcpu_uninit(vcpu);
 kvm_pmu_destroy(vcpu);
 kfree(vcpu->arch.mce_banks);
 kvm_free_lapic(vcpu);
 idx = srcu_read_lock(&vcpu->kvm->srcu);
 kvm_mmu_destroy(vcpu);
 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 free_page((unsigned long)vcpu->arch.pio_data);
 if (!lapic_in_kernel(vcpu))
  static_key_slow_dec(&kvm_no_apic_vcpu);
}
