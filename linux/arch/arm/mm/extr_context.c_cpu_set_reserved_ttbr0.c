
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int isb () ;

__attribute__((used)) static void cpu_set_reserved_ttbr0(void)
{
 u32 ttb;





 asm volatile(
 "	mrc	p15, 0, %0, c2, c0, 1		@ read TTBR1\n"
 "	mcr	p15, 0, %0, c2, c0, 0		@ set TTBR0\n"
 : "=r" (ttb));
 isb();
}
