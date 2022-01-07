
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {void* priv; } ;



__attribute__((used)) static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)
{
 return kcs_bmc->priv;
}
