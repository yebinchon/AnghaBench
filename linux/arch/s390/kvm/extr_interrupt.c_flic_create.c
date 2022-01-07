
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct kvm_device {TYPE_2__* kvm; } ;
struct TYPE_3__ {struct kvm_device* flic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int EINVAL ;

__attribute__((used)) static int flic_create(struct kvm_device *dev, u32 type)
{
 if (!dev)
  return -EINVAL;
 if (dev->kvm->arch.flic)
  return -EINVAL;
 dev->kvm->arch.flic = dev;
 return 0;
}
