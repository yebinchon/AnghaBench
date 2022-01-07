
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fadump_mrange_info {int mem_range_cnt; int max_mem_ranges; int name; struct fadump_memory_range* mem_ranges; } ;
struct fadump_memory_range {scalar_t__ base; scalar_t__ size; } ;


 int fadump_alloc_mem_ranges (struct fadump_mrange_info*) ;
 int pr_debug (char*,int ,int,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int fadump_add_mem_range(struct fadump_mrange_info *mrange_info,
           u64 base, u64 end)
{
 struct fadump_memory_range *mem_ranges = mrange_info->mem_ranges;
 bool is_adjacent = 0;
 u64 start, size;

 if (base == end)
  return 0;





 if (mrange_info->mem_range_cnt) {
  start = mem_ranges[mrange_info->mem_range_cnt - 1].base;
  size = mem_ranges[mrange_info->mem_range_cnt - 1].size;

  if ((start + size) == base)
   is_adjacent = 1;
 }
 if (!is_adjacent) {

  if (mrange_info->mem_range_cnt == mrange_info->max_mem_ranges) {
   int ret;

   ret = fadump_alloc_mem_ranges(mrange_info);
   if (ret)
    return ret;


   mem_ranges = mrange_info->mem_ranges;
  }

  start = base;
  mem_ranges[mrange_info->mem_range_cnt].base = start;
  mrange_info->mem_range_cnt++;
 }

 mem_ranges[mrange_info->mem_range_cnt - 1].size = (end - start);
 pr_debug("%s_memory_range[%d] [%#016llx-%#016llx], %#llx bytes\n",
   mrange_info->name, (mrange_info->mem_range_cnt - 1),
   start, end - 1, (end - start));
 return 0;
}
