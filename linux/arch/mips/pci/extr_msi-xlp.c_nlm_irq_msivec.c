
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLM_MSI_VEC_BASE ;
 int XLP_MSIVEC_PER_LINK ;

__attribute__((used)) static inline int nlm_irq_msivec(int irq)
{
 return (irq - NLM_MSI_VEC_BASE) % XLP_MSIVEC_PER_LINK;
}
