
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kvmclock_update_work; int kvmclock_sync_work; } ;
struct kvm {TYPE_1__ arch; } ;


 int cancel_delayed_work_sync (int *) ;
 int kvm_free_pit (struct kvm*) ;

void kvm_arch_sync_events(struct kvm *kvm)
{
 cancel_delayed_work_sync(&kvm->arch.kvmclock_sync_work);
 cancel_delayed_work_sync(&kvm->arch.kvmclock_update_work);
 kvm_free_pit(kvm);
}
