
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_UMWAIT_CONTROL ;
 int orig_umwait_control_cached ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static int umwait_cpu_offline(unsigned int cpu)
{






 wrmsr(MSR_IA32_UMWAIT_CONTROL, orig_umwait_control_cached, 0);

 return 0;
}
