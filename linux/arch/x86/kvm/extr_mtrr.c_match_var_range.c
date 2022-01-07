
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mtrr_iter {scalar_t__ end; scalar_t__ start; int partial_map; scalar_t__ start_max; struct kvm_mtrr_range* range; } ;
struct kvm_mtrr_range {int dummy; } ;


 scalar_t__ max (scalar_t__,scalar_t__) ;
 int var_mtrr_range (struct kvm_mtrr_range*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static bool match_var_range(struct mtrr_iter *iter,
       struct kvm_mtrr_range *range)
{
 u64 start, end;

 var_mtrr_range(range, &start, &end);
 if (!(start >= iter->end || end <= iter->start)) {
  iter->range = range;






  iter->partial_map |= iter->start_max < start;


  iter->start_max = max(iter->start_max, end);
  return 1;
 }

 return 0;
}
