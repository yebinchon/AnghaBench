
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLM_MSI_VEC_BASE ;
 int PCIE_NLINKS ;
 int XLP_MSIVEC_PER_LINK ;

__attribute__((used)) static inline int nlm_irq_msilink(int irq)
{
 int total_msivec = XLP_MSIVEC_PER_LINK * PCIE_NLINKS;

 return ((irq - NLM_MSI_VEC_BASE) % total_msivec) /
  XLP_MSIVEC_PER_LINK;
}
