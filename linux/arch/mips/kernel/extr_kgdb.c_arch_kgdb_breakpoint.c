
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void arch_kgdb_breakpoint(void)
{
 __asm__ __volatile__(
  ".globl breakinst\n\t"
  ".set\tnoreorder\n\t"
  "nop\n"
  "breakinst:\tbreak\n\t"
  "nop\n\t"
  ".set\treorder");
}
