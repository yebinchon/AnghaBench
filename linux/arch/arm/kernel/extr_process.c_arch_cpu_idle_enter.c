
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_LED_IDLE_START ;
 int ledtrig_cpu (int ) ;
 int wmb () ;

void arch_cpu_idle_enter(void)
{
 ledtrig_cpu(CPU_LED_IDLE_START);



}
