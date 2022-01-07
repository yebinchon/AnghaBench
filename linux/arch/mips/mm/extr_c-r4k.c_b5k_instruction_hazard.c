
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sync () ;

__attribute__((used)) static void b5k_instruction_hazard(void)
{
 __sync();
 __sync();
 __asm__ __volatile__(
 "       nop; nop; nop; nop; nop; nop; nop; nop\n"
 "       nop; nop; nop; nop; nop; nop; nop; nop\n"
 "       nop; nop; nop; nop; nop; nop; nop; nop\n"
 "       nop; nop; nop; nop; nop; nop; nop; nop\n"
 : : : "memory");
}
