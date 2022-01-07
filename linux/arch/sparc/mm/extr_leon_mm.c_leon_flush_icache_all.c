
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void leon_flush_icache_all(void)
{
 __asm__ __volatile__(" flush ");
}
