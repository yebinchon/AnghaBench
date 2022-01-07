
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_page_track_notifier_node {int dummy; } ;
struct TYPE_2__ {struct kvm_page_track_notifier_node mmu_sp_tracker; } ;
struct kvm {TYPE_1__ arch; } ;


 int kvm_page_track_unregister_notifier (struct kvm*,struct kvm_page_track_notifier_node*) ;

void kvm_mmu_uninit_vm(struct kvm *kvm)
{
 struct kvm_page_track_notifier_node *node = &kvm->arch.mmu_sp_tracker;

 kvm_page_track_unregister_notifier(kvm, node);
}
