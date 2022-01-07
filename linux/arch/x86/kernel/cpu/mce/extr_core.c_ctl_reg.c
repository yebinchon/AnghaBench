
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_IA32_MCx_CTL (int) ;

__attribute__((used)) static inline u32 ctl_reg(int bank)
{
 return MSR_IA32_MCx_CTL(bank);
}
