
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_IA32_UMWAIT_CONTROL_TIME_MASK ;

__attribute__((used)) static inline u32 umwait_ctrl_max_time(u32 ctrl)
{
 return ctrl & MSR_IA32_UMWAIT_CONTROL_TIME_MASK;
}
