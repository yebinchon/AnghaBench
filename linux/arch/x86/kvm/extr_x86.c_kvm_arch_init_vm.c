
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int guest_can_read_msr_platform_info; int kvmclock_sync_work; int kvmclock_update_work; int kvmclock_offset; int pvclock_gtod_sync_lock; int apic_map_lock; int tsc_write_lock; int irq_sources_bitmap; int noncoherent_dma_count; int assigned_dev_head; int lpage_disallowed_mmu_pages; int zapped_obsolete_pages; int active_mmu_pages; int mask_notifier_list; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* vm_init ) (struct kvm*) ;} ;


 int EINVAL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int KVM_IRQFD_RESAMPLE_IRQ_SOURCE_ID ;
 int KVM_USERSPACE_IRQ_SOURCE_ID ;
 int atomic_set (int *,int ) ;
 int ktime_get_boottime_ns () ;
 int kvm_hv_init_vm (struct kvm*) ;
 int kvm_mmu_init_vm (struct kvm*) ;
 int kvm_page_track_init (struct kvm*) ;
 TYPE_2__* kvm_x86_ops ;
 int kvmclock_sync_fn ;
 int kvmclock_update_fn ;
 int mutex_init (int *) ;
 int pvclock_update_vm_gtod_copy (struct kvm*) ;
 int raw_spin_lock_init (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct kvm*) ;

int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
{
 if (type)
  return -EINVAL;

 INIT_HLIST_HEAD(&kvm->arch.mask_notifier_list);
 INIT_LIST_HEAD(&kvm->arch.active_mmu_pages);
 INIT_LIST_HEAD(&kvm->arch.zapped_obsolete_pages);
 INIT_LIST_HEAD(&kvm->arch.lpage_disallowed_mmu_pages);
 INIT_LIST_HEAD(&kvm->arch.assigned_dev_head);
 atomic_set(&kvm->arch.noncoherent_dma_count, 0);


 set_bit(KVM_USERSPACE_IRQ_SOURCE_ID, &kvm->arch.irq_sources_bitmap);

 set_bit(KVM_IRQFD_RESAMPLE_IRQ_SOURCE_ID,
  &kvm->arch.irq_sources_bitmap);

 raw_spin_lock_init(&kvm->arch.tsc_write_lock);
 mutex_init(&kvm->arch.apic_map_lock);
 spin_lock_init(&kvm->arch.pvclock_gtod_sync_lock);

 kvm->arch.kvmclock_offset = -ktime_get_boottime_ns();
 pvclock_update_vm_gtod_copy(kvm);

 kvm->arch.guest_can_read_msr_platform_info = 1;

 INIT_DELAYED_WORK(&kvm->arch.kvmclock_update_work, kvmclock_update_fn);
 INIT_DELAYED_WORK(&kvm->arch.kvmclock_sync_work, kvmclock_sync_fn);

 kvm_hv_init_vm(kvm);
 kvm_page_track_init(kvm);
 kvm_mmu_init_vm(kvm);

 return kvm_x86_ops->vm_init(kvm);
}
