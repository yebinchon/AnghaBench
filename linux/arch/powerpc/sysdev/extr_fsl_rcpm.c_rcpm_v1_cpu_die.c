
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E500_PM_PH15 ;
 int rcpm_v1_cpu_enter_state (int,int ) ;

__attribute__((used)) static void rcpm_v1_cpu_die(int cpu)
{
 rcpm_v1_cpu_enter_state(cpu, E500_PM_PH15);
}
