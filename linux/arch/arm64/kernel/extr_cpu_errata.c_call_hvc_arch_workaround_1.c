
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_SMCCC_ARCH_WORKAROUND_1 ;
 int arm_smccc_1_1_hvc (int ,int *) ;

__attribute__((used)) static void call_hvc_arch_workaround_1(void)
{
 arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_1, ((void*)0));
}
