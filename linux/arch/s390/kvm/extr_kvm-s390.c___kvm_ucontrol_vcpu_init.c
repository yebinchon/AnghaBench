
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* gmap; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
struct TYPE_6__ {int mm; } ;
struct TYPE_5__ {int private; } ;


 int ENOMEM ;
 TYPE_3__* current ;
 TYPE_2__* gmap_create (int ,unsigned long) ;

__attribute__((used)) static int __kvm_ucontrol_vcpu_init(struct kvm_vcpu *vcpu)
{
 vcpu->arch.gmap = gmap_create(current->mm, -1UL);
 if (!vcpu->arch.gmap)
  return -ENOMEM;
 vcpu->arch.gmap->private = vcpu->kvm;

 return 0;
}
