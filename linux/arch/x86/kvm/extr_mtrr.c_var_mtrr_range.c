
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mtrr_range {int base; int mask; } ;


 int PAGE_MASK ;

__attribute__((used)) static void var_mtrr_range(struct kvm_mtrr_range *range, u64 *start, u64 *end)
{
 u64 mask;

 *start = range->base & PAGE_MASK;

 mask = range->mask & PAGE_MASK;




 *end = (*start | ~mask) + 1;
}
