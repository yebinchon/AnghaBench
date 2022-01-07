
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int umwait_control_cached ;

u32 get_umwait_control_msr(void)
{
 return umwait_control_cached;
}
