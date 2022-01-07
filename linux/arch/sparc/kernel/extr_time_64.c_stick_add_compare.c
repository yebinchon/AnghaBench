
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TICKCMP_IRQ_BIT ;

__attribute__((used)) static int stick_add_compare(unsigned long adj)
{
 unsigned long orig_tick, new_tick;

 __asm__ __volatile__("rd	%%asr24, %0"
        : "=r" (orig_tick));
 orig_tick &= ~TICKCMP_IRQ_BIT;

 __asm__ __volatile__("wr	%0, 0, %%asr25"
        :
        : "r" (orig_tick + adj));

 __asm__ __volatile__("rd	%%asr24, %0"
        : "=r" (new_tick));
 new_tick &= ~TICKCMP_IRQ_BIT;

 return ((long)(new_tick - (orig_tick+adj))) > 0L;
}
