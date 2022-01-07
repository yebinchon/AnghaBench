
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_device {TYPE_2__* kvm; } ;
struct TYPE_3__ {int * flic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int kfree (struct kvm_device*) ;

__attribute__((used)) static void flic_destroy(struct kvm_device *dev)
{
 dev->kvm->arch.flic = ((void*)0);
 kfree(dev);
}
