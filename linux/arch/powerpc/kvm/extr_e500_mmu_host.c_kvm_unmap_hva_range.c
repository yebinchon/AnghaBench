
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_unmap_hva (struct kvm*,unsigned long) ;

int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
{

 kvm_unmap_hva(kvm, start);

 return 0;
}
