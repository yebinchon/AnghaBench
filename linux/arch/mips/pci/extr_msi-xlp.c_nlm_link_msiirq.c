
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLM_MSI_VEC_BASE ;
 int XLP_MSIVEC_PER_LINK ;

__attribute__((used)) static inline int nlm_link_msiirq(int link, int msivec)
{
 return NLM_MSI_VEC_BASE + link * XLP_MSIVEC_PER_LINK + msivec;
}
