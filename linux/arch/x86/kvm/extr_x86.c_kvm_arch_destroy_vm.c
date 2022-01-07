
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pmu_event_filter; int apic_map; } ;
struct kvm {scalar_t__ mm; int srcu; TYPE_1__ arch; } ;
struct TYPE_6__ {scalar_t__ mm; } ;
struct TYPE_5__ {int (* vm_destroy ) (struct kvm*) ;} ;


 int APIC_ACCESS_PAGE_PRIVATE_MEMSLOT ;
 int IDENTITY_PAGETABLE_PRIVATE_MEMSLOT ;
 int TSS_PRIVATE_MEMSLOT ;
 TYPE_3__* current ;
 int kfree (int ) ;
 int kvfree (int ) ;
 int kvm_free_vcpus (struct kvm*) ;
 int kvm_hv_destroy_vm (struct kvm*) ;
 int kvm_ioapic_destroy (struct kvm*) ;
 int kvm_mmu_uninit_vm (struct kvm*) ;
 int kvm_page_track_cleanup (struct kvm*) ;
 int kvm_pic_destroy (struct kvm*) ;
 TYPE_2__* kvm_x86_ops ;
 int rcu_dereference_check (int ,int) ;
 int srcu_dereference_check (int ,int *,int) ;
 int stub1 (struct kvm*) ;
 int x86_set_memory_region (struct kvm*,int ,int ,int ) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 if (current->mm == kvm->mm) {





  x86_set_memory_region(kvm, APIC_ACCESS_PAGE_PRIVATE_MEMSLOT, 0, 0);
  x86_set_memory_region(kvm, IDENTITY_PAGETABLE_PRIVATE_MEMSLOT, 0, 0);
  x86_set_memory_region(kvm, TSS_PRIVATE_MEMSLOT, 0, 0);
 }
 if (kvm_x86_ops->vm_destroy)
  kvm_x86_ops->vm_destroy(kvm);
 kvm_pic_destroy(kvm);
 kvm_ioapic_destroy(kvm);
 kvm_free_vcpus(kvm);
 kvfree(rcu_dereference_check(kvm->arch.apic_map, 1));
 kfree(srcu_dereference_check(kvm->arch.pmu_event_filter, &kvm->srcu, 1));
 kvm_mmu_uninit_vm(kvm);
 kvm_page_track_cleanup(kvm);
 kvm_hv_destroy_vm(kvm);
}
