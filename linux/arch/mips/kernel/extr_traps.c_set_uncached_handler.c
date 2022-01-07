
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CKSEG1ADDR (int ) ;
 int ebase ;
 int memcpy (void*,void*,unsigned long) ;
 int panic (int ) ;
 int panic_null_cerr ;

void set_uncached_handler(unsigned long offset, void *addr,
 unsigned long size)
{
 unsigned long uncached_ebase = CKSEG1ADDR(ebase);

 if (!addr)
  panic(panic_null_cerr);

 memcpy((void *)(uncached_ebase + offset), addr, size);
}
