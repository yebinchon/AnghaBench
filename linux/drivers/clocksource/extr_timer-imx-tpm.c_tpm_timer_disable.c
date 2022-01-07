
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TPM_C0SC ;
 unsigned int TPM_C0SC_CHIE ;
 unsigned int TPM_C0SC_MODE_MASK ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ timer_base ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void tpm_timer_disable(void)
{
 unsigned int val;


 val = readl(timer_base + TPM_C0SC);
 val &= ~(TPM_C0SC_MODE_MASK | TPM_C0SC_CHIE);
 writel(val, timer_base + TPM_C0SC);
}
