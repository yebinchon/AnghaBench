
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pic {int dev_eclr; int kvm; int dev_slave; int dev_master; } ;
struct TYPE_2__ {struct kvm_pic* vpic; } ;
struct kvm {TYPE_1__ arch; int slots_lock; } ;


 int KVM_PIO_BUS ;
 int kfree (struct kvm_pic*) ;
 int kvm_io_bus_unregister_dev (int ,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_pic_destroy(struct kvm *kvm)
{
 struct kvm_pic *vpic = kvm->arch.vpic;

 if (!vpic)
  return;

 mutex_lock(&kvm->slots_lock);
 kvm_io_bus_unregister_dev(vpic->kvm, KVM_PIO_BUS, &vpic->dev_master);
 kvm_io_bus_unregister_dev(vpic->kvm, KVM_PIO_BUS, &vpic->dev_slave);
 kvm_io_bus_unregister_dev(vpic->kvm, KVM_PIO_BUS, &vpic->dev_eclr);
 mutex_unlock(&kvm->slots_lock);

 kvm->arch.vpic = ((void*)0);
 kfree(vpic);
}
