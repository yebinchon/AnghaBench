
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void imx3_idle(void)
{
 unsigned long reg = 0;

 __asm__ __volatile__(

  "mrc p15, 0, %0, c1, c0, 0\n"
  "bic %0, %0, #0x00001000\n"
  "bic %0, %0, #0x00000004\n"
  "mcr p15, 0, %0, c1, c0, 0\n"

  "mov %0, #0\n"
  "mcr p15, 0, %0, c7, c5, 0\n"

  "mov %0, #0\n"
  "mcr p15, 0, %0, c7, c14, 0\n"

  "mov %0, #0\n"
  "mcr p15, 0, %0, c7, c0, 4\n"
  "nop\n" "nop\n" "nop\n" "nop\n"
  "nop\n" "nop\n" "nop\n"

  "mrc p15, 0, %0, c1, c0, 0\n"
  "orr %0, %0, #0x00001000\n"
  "orr %0, %0, #0x00000004\n"
  "mcr p15, 0, %0, c1, c0, 0\n"
  : "=r" (reg));
}
