
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_IA32_UMWAIT_CONTROL_C02_DISABLE ;
 int MSR_IA32_UMWAIT_CONTROL_TIME_MASK ;
 int WRITE_ONCE (int ,int) ;
 int on_each_cpu (int ,int *,int) ;
 int umwait_control_cached ;
 int umwait_update_control_msr ;

__attribute__((used)) static inline void umwait_update_control(u32 maxtime, bool c02_enable)
{
 u32 ctrl = maxtime & MSR_IA32_UMWAIT_CONTROL_TIME_MASK;

 if (!c02_enable)
  ctrl |= MSR_IA32_UMWAIT_CONTROL_C02_DISABLE;

 WRITE_ONCE(umwait_control_cached, ctrl);

 on_each_cpu(umwait_update_control_msr, ((void*)0), 1);
}
