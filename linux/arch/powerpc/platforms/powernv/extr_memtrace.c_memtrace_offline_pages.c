
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ MEM_GOING_OFFLINE ;
 scalar_t__ MEM_OFFLINE ;
 scalar_t__ MEM_ONLINE ;
 unsigned long PFN_PHYS (int ) ;
 int change_memblock_state ;
 int check_memblock_online ;
 scalar_t__ offline_pages (int ,int ) ;
 scalar_t__ walk_memory_blocks (unsigned long const,unsigned long const,void*,int ) ;

__attribute__((used)) static bool memtrace_offline_pages(u32 nid, u64 start_pfn, u64 nr_pages)
{
 const unsigned long start = PFN_PHYS(start_pfn);
 const unsigned long size = PFN_PHYS(nr_pages);

 if (walk_memory_blocks(start, size, ((void*)0), check_memblock_online))
  return 0;

 walk_memory_blocks(start, size, (void *)MEM_GOING_OFFLINE,
      change_memblock_state);

 if (offline_pages(start_pfn, nr_pages)) {
  walk_memory_blocks(start, size, (void *)MEM_ONLINE,
       change_memblock_state);
  return 0;
 }

 walk_memory_blocks(start, size, (void *)MEM_OFFLINE,
      change_memblock_state);


 return 1;
}
