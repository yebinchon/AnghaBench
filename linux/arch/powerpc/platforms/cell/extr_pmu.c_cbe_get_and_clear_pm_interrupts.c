
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cbe_read_pm (int ,int ) ;
 int pm_status ;

u32 cbe_get_and_clear_pm_interrupts(u32 cpu)
{

 return cbe_read_pm(cpu, pm_status);
}
