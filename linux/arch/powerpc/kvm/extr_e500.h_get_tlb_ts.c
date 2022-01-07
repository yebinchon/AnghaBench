
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_book3e_206_tlb_entry {int mas1; } ;



__attribute__((used)) static inline unsigned int
get_tlb_ts(const struct kvm_book3e_206_tlb_entry *tlbe)
{
 return (tlbe->mas1 >> 12) & 0x1;
}
