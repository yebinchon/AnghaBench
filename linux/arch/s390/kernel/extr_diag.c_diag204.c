
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_STAT_X204 ;
 unsigned long __diag204 (unsigned long*,unsigned long,void*) ;
 int diag_stat_inc (int ) ;

int diag204(unsigned long subcode, unsigned long size, void *addr)
{
 diag_stat_inc(DIAG_STAT_X204);
 size = __diag204(&subcode, size, addr);
 if (subcode)
  return -1;
 return size;
}
