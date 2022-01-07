
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_book3e_206_tlb_entry {unsigned int mas1; } ;


 unsigned int MAS1_TSIZE_MASK ;
 unsigned int MAS1_TSIZE_SHIFT ;

__attribute__((used)) static inline unsigned int
get_tlb_tsize(const struct kvm_book3e_206_tlb_entry *tlbe)
{
 return (tlbe->mas1 & MAS1_TSIZE_MASK) >> MAS1_TSIZE_SHIFT;
}
