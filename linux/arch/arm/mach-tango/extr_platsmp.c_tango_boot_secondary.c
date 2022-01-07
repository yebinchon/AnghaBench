
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __pa_symbol (int ) ;
 int secondary_startup ;
 int tango_set_aux_boot_addr (int ) ;
 int tango_start_aux_core (unsigned int) ;

__attribute__((used)) static int tango_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 tango_set_aux_boot_addr(__pa_symbol(secondary_startup));
 tango_start_aux_core(cpu);
 return 0;
}
