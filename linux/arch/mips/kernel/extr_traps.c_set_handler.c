
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ebase ;
 int local_flush_icache_range (scalar_t__,scalar_t__) ;
 int memcpy (void*,void*,unsigned long) ;

void set_handler(unsigned long offset, void *addr, unsigned long size)
{



 memcpy((void *)(ebase + offset), addr, size);

 local_flush_icache_range(ebase + offset, ebase + offset + size);
}
