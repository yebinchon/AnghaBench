
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_vcpu* kseg0_commpage; struct kvm_vcpu* guest_ebase; int comparecount_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int hrtimer_cancel (int *) ;
 int kfree (struct kvm_vcpu*) ;
 int kvm_mips_dump_stats (struct kvm_vcpu*) ;
 int kvm_mmu_free_memory_caches (struct kvm_vcpu*) ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;

void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
{
 hrtimer_cancel(&vcpu->arch.comparecount_timer);

 kvm_vcpu_uninit(vcpu);

 kvm_mips_dump_stats(vcpu);

 kvm_mmu_free_memory_caches(vcpu);
 kfree(vcpu->arch.guest_ebase);
 kfree(vcpu->arch.kseg0_commpage);
 kfree(vcpu);
}
