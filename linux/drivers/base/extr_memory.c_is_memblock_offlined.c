
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {scalar_t__ state; } ;


 scalar_t__ MEM_OFFLINE ;

bool is_memblock_offlined(struct memory_block *mem)
{
 return mem->state == MEM_OFFLINE;
}
