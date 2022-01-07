
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dmi_check_system (int ) ;
 int msr_save_cpu_table ;
 int msr_save_dmi_table ;
 int pm_cpu_check (int ) ;

__attribute__((used)) static int pm_check_save_msr(void)
{
 dmi_check_system(msr_save_dmi_table);
 pm_cpu_check(msr_save_cpu_table);

 return 0;
}
