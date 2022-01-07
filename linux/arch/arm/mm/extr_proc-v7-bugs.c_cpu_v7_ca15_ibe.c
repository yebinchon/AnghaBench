
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int ) ;
 scalar_t__ check_spectre_auxcr (int ,int ) ;
 int cpu_v7_spectre_init () ;
 int spectre_warned ;
 int this_cpu_ptr (int *) ;

void cpu_v7_ca15_ibe(void)
{
 if (check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(0)))
  cpu_v7_spectre_init();
}
