
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* unmap_hva_range ) (struct kvm*,unsigned long,unsigned long) ;} ;


 int stub1 (struct kvm*,unsigned long,unsigned long) ;

int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
{
 return kvm->arch.kvm_ops->unmap_hva_range(kvm, start, end);
}
