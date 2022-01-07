
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void arch_cpu_idle(void)
{

 __asm__ __volatile__("sleep 0x3	\n");
}
