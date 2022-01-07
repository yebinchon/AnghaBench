
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_IA32_UMWAIT_CONTROL_C02_DISABLE ;

__attribute__((used)) static inline bool umwait_ctrl_c02_enabled(u32 ctrl)
{
 return !(ctrl & MSR_IA32_UMWAIT_CONTROL_C02_DISABLE);
}
