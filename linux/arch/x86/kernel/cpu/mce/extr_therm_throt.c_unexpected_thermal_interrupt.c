
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void unexpected_thermal_interrupt(void)
{
 pr_err("CPU%d: Unexpected LVT thermal interrupt!\n",
  smp_processor_id());
}
