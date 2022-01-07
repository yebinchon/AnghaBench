
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sync_is () ;

void icache_inv_all(void)
{
 asm volatile("icache.ialls\n":::"memory");
 sync_is();
}
