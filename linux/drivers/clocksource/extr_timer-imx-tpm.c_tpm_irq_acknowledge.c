
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TPM_STATUS ;
 int TPM_STATUS_CH0F ;
 scalar_t__ timer_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void tpm_irq_acknowledge(void)
{
 writel(TPM_STATUS_CH0F, timer_base + TPM_STATUS);
}
