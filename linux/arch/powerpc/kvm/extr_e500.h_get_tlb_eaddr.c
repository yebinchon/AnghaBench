
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_book3e_206_tlb_entry {int mas2; } ;
typedef int gva_t ;


 int MAS2_EPN ;

__attribute__((used)) static inline gva_t get_tlb_eaddr(const struct kvm_book3e_206_tlb_entry *tlbe)
{
 return tlbe->mas2 & MAS2_EPN;
}
