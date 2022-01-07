
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {scalar_t__ section_count; } ;


 int IS_ALIGNED (unsigned long,int ) ;
 int PFN_DOWN (unsigned long) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct memory_block* find_memory_block_by_id (unsigned long) ;
 int mem_sysfs_mutex ;
 int memory_block_size_bytes () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long pfn_to_block_id (int ) ;
 int unregister_memory (struct memory_block*) ;
 int unregister_memory_block_under_nodes (struct memory_block*) ;

void remove_memory_block_devices(unsigned long start, unsigned long size)
{
 const unsigned long start_block_id = pfn_to_block_id(PFN_DOWN(start));
 const unsigned long end_block_id = pfn_to_block_id(PFN_DOWN(start + size));
 struct memory_block *mem;
 unsigned long block_id;

 if (WARN_ON_ONCE(!IS_ALIGNED(start, memory_block_size_bytes()) ||
    !IS_ALIGNED(size, memory_block_size_bytes())))
  return;

 mutex_lock(&mem_sysfs_mutex);
 for (block_id = start_block_id; block_id != end_block_id; block_id++) {
  mem = find_memory_block_by_id(block_id);
  if (WARN_ON_ONCE(!mem))
   continue;
  mem->section_count = 0;
  unregister_memory_block_under_nodes(mem);
  unregister_memory(mem);
 }
 mutex_unlock(&mem_sysfs_mutex);
}
