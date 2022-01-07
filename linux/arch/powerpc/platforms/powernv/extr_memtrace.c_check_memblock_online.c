
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {scalar_t__ state; } ;


 scalar_t__ MEM_ONLINE ;

__attribute__((used)) static int check_memblock_online(struct memory_block *mem, void *arg)
{
 if (mem->state != MEM_ONLINE)
  return -1;

 return 0;
}
