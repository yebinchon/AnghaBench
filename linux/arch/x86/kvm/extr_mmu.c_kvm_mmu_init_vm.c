
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_page_track_notifier_node {int track_flush_slot; int track_write; } ;
struct TYPE_2__ {struct kvm_page_track_notifier_node mmu_sp_tracker; } ;
struct kvm {TYPE_1__ arch; } ;


 int kvm_mmu_invalidate_zap_pages_in_memslot ;
 int kvm_mmu_pte_write ;
 int kvm_page_track_register_notifier (struct kvm*,struct kvm_page_track_notifier_node*) ;

void kvm_mmu_init_vm(struct kvm *kvm)
{
 struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;

 node->track_write = kvm_mmu_pte_write;
 node->track_flush_slot = kvm_mmu_invalidate_zap_pages_in_memslot;
 kvm_page_track_register_notifier(kvm, node);
}
