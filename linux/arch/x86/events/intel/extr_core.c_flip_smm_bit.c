
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUGCTLMSR_FREEZE_IN_SMM_BIT ;
 int MSR_IA32_DEBUGCTLMSR ;
 int msr_clear_bit (int ,int ) ;
 int msr_set_bit (int ,int ) ;

__attribute__((used)) static void flip_smm_bit(void *data)
{
 unsigned long set = *(unsigned long *)data;

 if (set > 0) {
  msr_set_bit(MSR_IA32_DEBUGCTLMSR,
       DEBUGCTLMSR_FREEZE_IN_SMM_BIT);
 } else {
  msr_clear_bit(MSR_IA32_DEBUGCTLMSR,
         DEBUGCTLMSR_FREEZE_IN_SMM_BIT);
 }
}
