
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int unreachable () ;

__attribute__((used)) static void machine_power_off(void)
{
 local_irq_disable();
 unreachable();
}
