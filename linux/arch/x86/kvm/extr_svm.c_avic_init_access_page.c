
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_2__ {int apic_access_page_done; } ;
struct kvm {int slots_lock; TYPE_1__ arch; } ;


 int APIC_ACCESS_PAGE_PRIVATE_MEMSLOT ;
 int APIC_DEFAULT_PHYS_BASE ;
 int PAGE_SIZE ;
 int __x86_set_memory_region (struct kvm*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int avic_init_access_page(struct kvm_vcpu *vcpu)
{
 struct kvm *kvm = vcpu->kvm;
 int ret = 0;

 mutex_lock(&kvm->slots_lock);
 if (kvm->arch.apic_access_page_done)
  goto out;

 ret = __x86_set_memory_region(kvm,
          APIC_ACCESS_PAGE_PRIVATE_MEMSLOT,
          APIC_DEFAULT_PHYS_BASE,
          PAGE_SIZE);
 if (ret)
  goto out;

 kvm->arch.apic_access_page_done = 1;
out:
 mutex_unlock(&kvm->slots_lock);
 return ret;
}
