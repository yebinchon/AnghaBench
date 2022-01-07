
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_IA32_TSX_CTRL ;
 int TSX_CTRL_CPUID_CLEAR ;
 int TSX_CTRL_RTM_DISABLE ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

void tsx_enable(void)
{
 u64 tsx;

 rdmsrl(MSR_IA32_TSX_CTRL, tsx);


 tsx &= ~TSX_CTRL_RTM_DISABLE;






 tsx &= ~TSX_CTRL_CPUID_CLEAR;

 wrmsrl(MSR_IA32_TSX_CTRL, tsx);
}
