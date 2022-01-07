
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {int (* flush_shadow_all ) (struct kvm*) ;} ;


 unsigned long PAGE_SIZE ;
 int handle_hva_to_gpa (struct kvm*,unsigned long,unsigned long,int *,int *) ;
 TYPE_1__* kvm_mips_callbacks ;
 int kvm_set_spte_handler ;
 int stub1 (struct kvm*) ;

int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
{
 unsigned long end = hva + PAGE_SIZE;
 int ret;

 ret = handle_hva_to_gpa(kvm, hva, end, &kvm_set_spte_handler, &pte);
 if (ret)
  kvm_mips_callbacks->flush_shadow_all(kvm);
 return 0;
}
