
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct openpic {TYPE_2__* kvm; struct openpic* private; } ;
struct kvm_device {TYPE_2__* kvm; struct kvm_device* private; } ;
struct TYPE_3__ {int * mpic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int kfree (struct openpic*) ;

__attribute__((used)) static void mpic_destroy(struct kvm_device *dev)
{
 struct openpic *opp = dev->private;

 dev->kvm->arch.mpic = ((void*)0);
 kfree(opp);
 kfree(dev);
}
