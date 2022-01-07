
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_IA32_RTIT_OUTPUT_BASE ;
 int MSR_IA32_RTIT_OUTPUT_MASK ;
 int virt_to_phys (void*) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void pt_config_buffer(void *buf, unsigned int topa_idx,
        unsigned int output_off)
{
 u64 reg;

 wrmsrl(MSR_IA32_RTIT_OUTPUT_BASE, virt_to_phys(buf));

 reg = 0x7f | ((u64)topa_idx << 7) | ((u64)output_off << 32);

 wrmsrl(MSR_IA32_RTIT_OUTPUT_MASK, reg);
}
