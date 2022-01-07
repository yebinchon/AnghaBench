
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void octeon_local_flush_icache(void)
{
 asm volatile ("synci 0($0)");
}
