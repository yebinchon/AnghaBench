
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void arch_cpu_idle(void)
{
 unsigned long tmp;






 asm volatile ("   mvc .s2 CSR,%0\n"
        "   or  .d2 1,%0,%0\n"
        "   mvc .s2 %0,CSR\n"
        "|| idle\n"
        : "=b"(tmp));
}
