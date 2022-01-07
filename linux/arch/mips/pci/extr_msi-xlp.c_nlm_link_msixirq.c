
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NLM_MSIX_VEC_BASE ;
 int XLP_MSIXVEC_PER_LINK ;

__attribute__((used)) static inline int nlm_link_msixirq(int link, int bit)
{
 return NLM_MSIX_VEC_BASE + link * XLP_MSIXVEC_PER_LINK + bit;
}
