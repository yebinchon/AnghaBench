
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_page_track_notifier_head {int track_srcu; } ;
struct TYPE_2__ {struct kvm_page_track_notifier_head track_notifier_head; } ;
struct kvm {TYPE_1__ arch; } ;


 int cleanup_srcu_struct (int *) ;

void kvm_page_track_cleanup(struct kvm *kvm)
{
 struct kvm_page_track_notifier_head *head;

 head = &kvm->arch.track_notifier_head;
 cleanup_srcu_struct(&head->track_srcu);
}
