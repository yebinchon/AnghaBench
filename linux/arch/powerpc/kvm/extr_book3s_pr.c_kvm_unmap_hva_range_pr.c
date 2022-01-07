
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int do_kvm_unmap_hva (struct kvm*,unsigned long,unsigned long) ;

__attribute__((used)) static int kvm_unmap_hva_range_pr(struct kvm *kvm, unsigned long start,
      unsigned long end)
{
 do_kvm_unmap_hva(kvm, start, end);

 return 0;
}
