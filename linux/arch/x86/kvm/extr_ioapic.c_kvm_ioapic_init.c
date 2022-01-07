
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic {int dev; int base_address; struct kvm* kvm; int eoi_inject; int lock; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; int slots_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IOAPIC_MEM_LENGTH ;
 int KVM_MMIO_BUS ;
 int ioapic_mmio_ops ;
 int kfree (struct kvm_ioapic*) ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int ,int ,int *) ;
 int kvm_ioapic_eoi_inject_work ;
 int kvm_ioapic_reset (struct kvm_ioapic*) ;
 int kvm_iodevice_init (int *,int *) ;
 struct kvm_ioapic* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

int kvm_ioapic_init(struct kvm *kvm)
{
 struct kvm_ioapic *ioapic;
 int ret;

 ioapic = kzalloc(sizeof(struct kvm_ioapic), GFP_KERNEL_ACCOUNT);
 if (!ioapic)
  return -ENOMEM;
 spin_lock_init(&ioapic->lock);
 INIT_DELAYED_WORK(&ioapic->eoi_inject, kvm_ioapic_eoi_inject_work);
 kvm->arch.vioapic = ioapic;
 kvm_ioapic_reset(ioapic);
 kvm_iodevice_init(&ioapic->dev, &ioapic_mmio_ops);
 ioapic->kvm = kvm;
 mutex_lock(&kvm->slots_lock);
 ret = kvm_io_bus_register_dev(kvm, KVM_MMIO_BUS, ioapic->base_address,
          IOAPIC_MEM_LENGTH, &ioapic->dev);
 mutex_unlock(&kvm->slots_lock);
 if (ret < 0) {
  kvm->arch.vioapic = ((void*)0);
  kfree(ioapic);
 }

 return ret;
}
