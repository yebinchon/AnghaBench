
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long tick_add_tick(unsigned long adj)
{
 unsigned long new_tick;


 __asm__ __volatile__("rd	%%tick, %0\n\t"
        "add	%0, %1, %0\n\t"
        "wrpr	%0, 0, %%tick\n\t"
        : "=&r" (new_tick)
        : "r" (adj));

 return new_tick;
}
