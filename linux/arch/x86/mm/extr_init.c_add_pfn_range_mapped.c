
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E820_MAX_ENTRIES ;
 int PAGE_SHIFT ;
 int add_range_with_merge (int ,int ,int ,unsigned long,unsigned long) ;
 int clean_sort_range (int ,int ) ;
 int max (int ,unsigned long) ;
 int max_low_pfn_mapped ;
 int max_pfn_mapped ;
 unsigned long min (unsigned long,unsigned long) ;
 int nr_pfn_mapped ;
 int pfn_mapped ;

__attribute__((used)) static void add_pfn_range_mapped(unsigned long start_pfn, unsigned long end_pfn)
{
 nr_pfn_mapped = add_range_with_merge(pfn_mapped, E820_MAX_ENTRIES,
          nr_pfn_mapped, start_pfn, end_pfn);
 nr_pfn_mapped = clean_sort_range(pfn_mapped, E820_MAX_ENTRIES);

 max_pfn_mapped = max(max_pfn_mapped, end_pfn);

 if (start_pfn < (1UL<<(32-PAGE_SHIFT)))
  max_low_pfn_mapped = max(max_low_pfn_mapped,
      min(end_pfn, 1UL<<(32-PAGE_SHIFT)));
}
