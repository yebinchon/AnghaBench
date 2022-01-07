
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic {int dev; int eoi_inject; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; int slots_lock; } ;


 int KVM_MMIO_BUS ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct kvm_ioapic*) ;
 int kvm_io_bus_unregister_dev (struct kvm*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_ioapic_destroy(struct kvm *kvm)
{
 struct kvm_ioapic *ioapic = kvm->arch.vioapic;

 if (!ioapic)
  return;

 cancel_delayed_work_sync(&ioapic->eoi_inject);
 mutex_lock(&kvm->slots_lock);
 kvm_io_bus_unregister_dev(kvm, KVM_MMIO_BUS, &ioapic->dev);
 mutex_unlock(&kvm->slots_lock);
 kvm->arch.vioapic = ((void*)0);
 kfree(ioapic);
}
