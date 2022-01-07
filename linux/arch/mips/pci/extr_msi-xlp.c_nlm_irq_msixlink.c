
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XLP_MSIXVEC_PER_LINK ;

__attribute__((used)) static inline int nlm_irq_msixlink(int msixvec)
{
 return msixvec / XLP_MSIXVEC_PER_LINK;
}
