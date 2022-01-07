
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mtrr_range {int mask; } ;



__attribute__((used)) static bool var_mtrr_range_is_valid(struct kvm_mtrr_range *range)
{
 return (range->mask & (1 << 11)) != 0;
}
