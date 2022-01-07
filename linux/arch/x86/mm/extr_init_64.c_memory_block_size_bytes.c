
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long memory_block_size_probed ;
 unsigned long probe_memory_block_size () ;

unsigned long memory_block_size_bytes(void)
{
 if (!memory_block_size_probed)
  memory_block_size_probed = probe_memory_block_size();

 return memory_block_size_probed;
}
