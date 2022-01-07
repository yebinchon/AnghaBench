
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {scalar_t__ section_count; } ;


 int EINVAL ;
 int IS_ALIGNED (unsigned long,int ) ;
 int MEM_OFFLINE ;
 int PFN_DOWN (unsigned long) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct memory_block* find_memory_block_by_id (unsigned long) ;
 int init_memory_block (struct memory_block**,unsigned long,int ) ;
 int mem_sysfs_mutex ;
 int memory_block_size_bytes () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* pfn_to_block_id (int ) ;
 scalar_t__ sections_per_block ;
 int unregister_memory (struct memory_block*) ;

int create_memory_block_devices(unsigned long start, unsigned long size)
{
 const unsigned long start_block_id = pfn_to_block_id(PFN_DOWN(start));
 unsigned long end_block_id = pfn_to_block_id(PFN_DOWN(start + size));
 struct memory_block *mem;
 unsigned long block_id;
 int ret = 0;

 if (WARN_ON_ONCE(!IS_ALIGNED(start, memory_block_size_bytes()) ||
    !IS_ALIGNED(size, memory_block_size_bytes())))
  return -EINVAL;

 mutex_lock(&mem_sysfs_mutex);
 for (block_id = start_block_id; block_id != end_block_id; block_id++) {
  ret = init_memory_block(&mem, block_id, MEM_OFFLINE);
  if (ret)
   break;
  mem->section_count = sections_per_block;
 }
 if (ret) {
  end_block_id = block_id;
  for (block_id = start_block_id; block_id != end_block_id;
       block_id++) {
   mem = find_memory_block_by_id(block_id);
   mem->section_count = 0;
   unregister_memory(mem);
  }
 }
 mutex_unlock(&mem_sysfs_mutex);
 return ret;
}
