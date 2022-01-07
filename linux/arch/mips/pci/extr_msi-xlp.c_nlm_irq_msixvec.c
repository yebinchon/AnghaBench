
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLM_MSIX_VEC_BASE ;
 int XLP_MSIXVEC_TOTAL ;

__attribute__((used)) static inline int nlm_irq_msixvec(int irq)
{
 return (irq - NLM_MSIX_VEC_BASE) % XLP_MSIXVEC_TOTAL;
}
