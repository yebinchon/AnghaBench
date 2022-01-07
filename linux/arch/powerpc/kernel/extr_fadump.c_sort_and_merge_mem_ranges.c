
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct fadump_mrange_info {int mem_range_cnt; struct fadump_memory_range* mem_ranges; } ;
struct fadump_memory_range {scalar_t__ base; scalar_t__ size; } ;
struct TYPE_2__ {int mem_range_cnt; } ;


 TYPE_1__ reserved_mrange_info ;

__attribute__((used)) static void sort_and_merge_mem_ranges(struct fadump_mrange_info *mrange_info)
{
 struct fadump_memory_range *mem_ranges;
 struct fadump_memory_range tmp_range;
 u64 base, size;
 int i, j, idx;

 if (!reserved_mrange_info.mem_range_cnt)
  return;


 mem_ranges = mrange_info->mem_ranges;
 for (i = 0; i < mrange_info->mem_range_cnt; i++) {
  idx = i;
  for (j = (i + 1); j < mrange_info->mem_range_cnt; j++) {
   if (mem_ranges[idx].base > mem_ranges[j].base)
    idx = j;
  }
  if (idx != i) {
   tmp_range = mem_ranges[idx];
   mem_ranges[idx] = mem_ranges[i];
   mem_ranges[i] = tmp_range;
  }
 }


 idx = 0;
 for (i = 1; i < mrange_info->mem_range_cnt; i++) {
  base = mem_ranges[i-1].base;
  size = mem_ranges[i-1].size;
  if (mem_ranges[i].base == (base + size))
   mem_ranges[idx].size += mem_ranges[i].size;
  else {
   idx++;
   if (i == idx)
    continue;

   mem_ranges[idx] = mem_ranges[i];
  }
 }
 mrange_info->mem_range_cnt = idx + 1;
}
