
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;
struct kvm {int dummy; } ;


 int __kvm_mmu_prepare_zap_page (struct kvm*,struct kvm_mmu_page*,struct list_head*,int*) ;

__attribute__((used)) static bool kvm_mmu_prepare_zap_page(struct kvm *kvm, struct kvm_mmu_page *sp,
         struct list_head *invalid_list)
{
 int nr_zapped;

 __kvm_mmu_prepare_zap_page(kvm, sp, invalid_list, &nr_zapped);
 return nr_zapped;
}
