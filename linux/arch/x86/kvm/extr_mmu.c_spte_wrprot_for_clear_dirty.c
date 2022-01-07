
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT_WRITABLE_SHIFT ;
 int kvm_set_pfn_dirty (int ) ;
 int spte_ad_enabled (int ) ;
 int spte_to_pfn (int ) ;
 int test_and_clear_bit (int ,unsigned long*) ;

__attribute__((used)) static bool spte_wrprot_for_clear_dirty(u64 *sptep)
{
 bool was_writable = test_and_clear_bit(PT_WRITABLE_SHIFT,
            (unsigned long *)sptep);
 if (was_writable && !spte_ad_enabled(*sptep))
  kvm_set_pfn_dirty(spte_to_pfn(*sptep));

 return was_writable;
}
