
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_field {int dummy; } ;


 scalar_t__ of_machine_is_compatible (char*) ;
 struct reg_field const* sti_stih407_dvfs_regfields ;

__attribute__((used)) static const struct reg_field *sti_cpufreq_match(void)
{
 if (of_machine_is_compatible("st,stih407") ||
     of_machine_is_compatible("st,stih410"))
  return sti_stih407_dvfs_regfields;

 return ((void*)0);
}
