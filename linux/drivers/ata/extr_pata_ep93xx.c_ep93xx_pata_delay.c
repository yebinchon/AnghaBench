
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ep93xx_pata_delay(unsigned long count)
{
 __asm__ volatile (
  "0:\n"
  "mov r0, r0\n"
  "subs %0, %1, #1\n"
  "bge 0b\n"
  : "=r" (count)
  : "0" (count)
 );
}
