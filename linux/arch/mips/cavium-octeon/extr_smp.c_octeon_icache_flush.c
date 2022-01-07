
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void octeon_icache_flush(void)
{
 asm volatile ("synci 0($0)\n");
}
