
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_LED_IDLE_END ;
 int ledtrig_cpu (int ) ;

void arch_cpu_idle_exit(void)
{
 ledtrig_cpu(CPU_LED_IDLE_END);
}
