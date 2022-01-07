
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_book3e_206_tlb_entry {int mas7_3; } ;


 int MAS3_SW ;
 int MAS3_UW ;

__attribute__((used)) static inline int tlbe_is_writable(struct kvm_book3e_206_tlb_entry *tlbe)
{
 return tlbe->mas7_3 & (MAS3_SW|MAS3_UW);
}
