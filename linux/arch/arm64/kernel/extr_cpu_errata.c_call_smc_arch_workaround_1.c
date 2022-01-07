
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_SMCCC_ARCH_WORKAROUND_1 ;
 int arm_smccc_1_1_smc (int ,int *) ;

__attribute__((used)) static void call_smc_arch_workaround_1(void)
{
 arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, ((void*)0));
}
