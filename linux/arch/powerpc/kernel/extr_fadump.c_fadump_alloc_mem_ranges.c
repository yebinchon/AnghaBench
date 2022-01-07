
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fadump_mrange_info {int mem_ranges_sz; int max_mem_ranges; struct fadump_memory_range* mem_ranges; int name; } ;
struct fadump_memory_range {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int fadump_free_mem_ranges (struct fadump_mrange_info*) ;
 struct fadump_memory_range* krealloc (struct fadump_memory_range*,int,int ) ;
 int pr_debug (char*,int,int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int fadump_alloc_mem_ranges(struct fadump_mrange_info *mrange_info)
{
 struct fadump_memory_range *new_array;
 u64 new_size;

 new_size = mrange_info->mem_ranges_sz + PAGE_SIZE;
 pr_debug("Allocating %llu bytes of memory for %s memory ranges\n",
   new_size, mrange_info->name);

 new_array = krealloc(mrange_info->mem_ranges, new_size, GFP_KERNEL);
 if (new_array == ((void*)0)) {
  pr_err("Insufficient memory for setting up %s memory ranges\n",
         mrange_info->name);
  fadump_free_mem_ranges(mrange_info);
  return -ENOMEM;
 }

 mrange_info->mem_ranges = new_array;
 mrange_info->mem_ranges_sz = new_size;
 mrange_info->max_mem_ranges = (new_size /
           sizeof(struct fadump_memory_range));
 return 0;
}
