
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DEFAULT_MAP_WINDOW ;
 unsigned long TASK_SIZE ;

bool mmap_address_hint_valid(unsigned long addr, unsigned long len)
{
 if (TASK_SIZE - len < addr)
  return 0;

 return (addr > DEFAULT_MAP_WINDOW) == (addr + len > DEFAULT_MAP_WINDOW);
}
