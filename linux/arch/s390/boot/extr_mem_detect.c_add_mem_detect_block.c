
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mem_detect_block {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_2__ {scalar_t__ count; } ;


 struct mem_detect_block* __get_mem_detect_block_ptr (scalar_t__) ;
 TYPE_1__ mem_detect ;

void add_mem_detect_block(u64 start, u64 end)
{
 struct mem_detect_block *block;

 if (mem_detect.count) {
  block = __get_mem_detect_block_ptr(mem_detect.count - 1);
  if (block->end == start) {
   block->end = end;
   return;
  }
 }

 block = __get_mem_detect_block_ptr(mem_detect.count);
 block->start = start;
 block->end = end;
 mem_detect.count++;
}
