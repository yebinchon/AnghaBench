
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cbe_get_and_clear_pm_interrupts (int ) ;
 int cbe_write_pm (int ,int ,int ) ;
 int pm_status ;

void cbe_disable_pm_interrupts(u32 cpu)
{
 cbe_get_and_clear_pm_interrupts(cpu);
 cbe_write_pm(cpu, pm_status, 0);
}
