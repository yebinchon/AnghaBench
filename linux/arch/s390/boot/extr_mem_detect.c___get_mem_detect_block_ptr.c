
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct mem_detect_block {int dummy; } ;
struct TYPE_2__ {struct mem_detect_block* entries_extended; struct mem_detect_block* entries; } ;


 size_t MEM_INLINED_ENTRIES ;
 TYPE_1__ mem_detect ;
 struct mem_detect_block* mem_detect_alloc_extended () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct mem_detect_block *__get_mem_detect_block_ptr(u32 n)
{
 if (n < MEM_INLINED_ENTRIES)
  return &mem_detect.entries[n];
 if (unlikely(!mem_detect.entries_extended))
  mem_detect.entries_extended = mem_detect_alloc_extended();
 return &mem_detect.entries_extended[n - MEM_INLINED_ENTRIES];
}
