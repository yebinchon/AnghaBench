
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct kvm_pit {int irq_source_id; int worker; TYPE_1__ pit_state; int speaker_dev; int dev; } ;
struct TYPE_4__ {struct kvm_pit* vpit; } ;
struct kvm {int slots_lock; TYPE_2__ arch; } ;


 int KVM_PIO_BUS ;
 int hrtimer_cancel (int *) ;
 int kfree (struct kvm_pit*) ;
 int kthread_destroy_worker (int ) ;
 int kvm_free_irq_source_id (struct kvm*,int ) ;
 int kvm_io_bus_unregister_dev (struct kvm*,int ,int *) ;
 int kvm_pit_set_reinject (struct kvm_pit*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kvm_free_pit(struct kvm *kvm)
{
 struct kvm_pit *pit = kvm->arch.vpit;

 if (pit) {
  mutex_lock(&kvm->slots_lock);
  kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS, &pit->dev);
  kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS, &pit->speaker_dev);
  mutex_unlock(&kvm->slots_lock);
  kvm_pit_set_reinject(pit, 0);
  hrtimer_cancel(&pit->pit_state.timer);
  kthread_destroy_worker(pit->worker);
  kvm_free_irq_source_id(kvm, pit->irq_source_id);
  kfree(pit);
 }
}
