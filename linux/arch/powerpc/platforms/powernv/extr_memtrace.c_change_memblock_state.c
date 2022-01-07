
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {unsigned long state; } ;



__attribute__((used)) static int change_memblock_state(struct memory_block *mem, void *arg)
{
 unsigned long state = (unsigned long)arg;

 mem->state = state;

 return 0;
}
