
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pic {int dev_master; int dev_slave; int dev_eclr; TYPE_1__* pics; struct kvm* kvm; int lock; } ;
struct TYPE_4__ {struct kvm_pic* vpic; } ;
struct kvm {int slots_lock; TYPE_2__ arch; } ;
struct TYPE_3__ {int elcr_mask; struct kvm_pic* pics_state; } ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int KVM_PIO_BUS ;
 int kfree (struct kvm_pic*) ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int,int,int *) ;
 int kvm_io_bus_unregister_dev (struct kvm*,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 struct kvm_pic* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int picdev_eclr_ops ;
 int picdev_master_ops ;
 int picdev_slave_ops ;
 int spin_lock_init (int *) ;

int kvm_pic_init(struct kvm *kvm)
{
 struct kvm_pic *s;
 int ret;

 s = kzalloc(sizeof(struct kvm_pic), GFP_KERNEL_ACCOUNT);
 if (!s)
  return -ENOMEM;
 spin_lock_init(&s->lock);
 s->kvm = kvm;
 s->pics[0].elcr_mask = 0xf8;
 s->pics[1].elcr_mask = 0xde;
 s->pics[0].pics_state = s;
 s->pics[1].pics_state = s;




 kvm_iodevice_init(&s->dev_master, &picdev_master_ops);
 kvm_iodevice_init(&s->dev_slave, &picdev_slave_ops);
 kvm_iodevice_init(&s->dev_eclr, &picdev_eclr_ops);
 mutex_lock(&kvm->slots_lock);
 ret = kvm_io_bus_register_dev(kvm, KVM_PIO_BUS, 0x20, 2,
          &s->dev_master);
 if (ret < 0)
  goto fail_unlock;

 ret = kvm_io_bus_register_dev(kvm, KVM_PIO_BUS, 0xa0, 2, &s->dev_slave);
 if (ret < 0)
  goto fail_unreg_2;

 ret = kvm_io_bus_register_dev(kvm, KVM_PIO_BUS, 0x4d0, 2, &s->dev_eclr);
 if (ret < 0)
  goto fail_unreg_1;

 mutex_unlock(&kvm->slots_lock);

 kvm->arch.vpic = s;

 return 0;

fail_unreg_1:
 kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS, &s->dev_slave);

fail_unreg_2:
 kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS, &s->dev_master);

fail_unlock:
 mutex_unlock(&kvm->slots_lock);

 kfree(s);

 return ret;
}
