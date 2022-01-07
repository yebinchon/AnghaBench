
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FIXADDR_USER_END ;
 unsigned long FIXADDR_USER_START ;

int in_gate_area_no_mm(unsigned long addr)
{
 if (!FIXADDR_USER_START)
  return 0;

 if ((addr >= FIXADDR_USER_START) && (addr < FIXADDR_USER_END))
  return 1;

 return 0;
}
