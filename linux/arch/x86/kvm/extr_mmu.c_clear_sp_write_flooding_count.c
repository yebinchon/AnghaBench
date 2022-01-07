
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int dummy; } ;


 int __clear_sp_write_flooding_count (struct kvm_mmu_page*) ;
 int __pa (int *) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void clear_sp_write_flooding_count(u64 *spte)
{
 struct kvm_mmu_page *sp = page_header(__pa(spte));

 __clear_sp_write_flooding_count(sp);
}
