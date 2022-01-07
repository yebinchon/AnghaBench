
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_s390_irq {int dummy; } ;
struct kvm_s390_interrupt_info {int dummy; } ;
struct kvm_device_attr {int attr; int addr; } ;
struct kvm_device {int kvm; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVM_S390_FLIC_MAX_BUFFER ;
 int __inject_vm (int ,struct kvm_s390_interrupt_info*) ;
 int copy_irq_from_user (struct kvm_s390_interrupt_info*,int) ;
 int kfree (struct kvm_s390_interrupt_info*) ;
 struct kvm_s390_interrupt_info* kzalloc (int,int ) ;

__attribute__((used)) static int enqueue_floating_irq(struct kvm_device *dev,
    struct kvm_device_attr *attr)
{
 struct kvm_s390_interrupt_info *inti = ((void*)0);
 int r = 0;
 int len = attr->attr;

 if (len % sizeof(struct kvm_s390_irq) != 0)
  return -EINVAL;
 else if (len > KVM_S390_FLIC_MAX_BUFFER)
  return -EINVAL;

 while (len >= sizeof(struct kvm_s390_irq)) {
  inti = kzalloc(sizeof(*inti), GFP_KERNEL);
  if (!inti)
   return -ENOMEM;

  r = copy_irq_from_user(inti, attr->addr);
  if (r) {
   kfree(inti);
   return r;
  }
  r = __inject_vm(dev->kvm, inti);
  if (r) {
   kfree(inti);
   return r;
  }
  len -= sizeof(struct kvm_s390_irq);
  attr->addr += sizeof(struct kvm_s390_irq);
 }

 return r;
}
