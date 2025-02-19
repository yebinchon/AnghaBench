
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct npcm7xx_kcs_bmc {TYPE_1__* reg; int map; } ;
struct kcs_bmc {int dummy; } ;
struct TYPE_2__ {int ie; int ctl; } ;


 int KCS_CTL_IBFIE ;
 int KCS_IE_HIRQE ;
 int KCS_IE_IRQE ;
 struct npcm7xx_kcs_bmc* kcs_bmc_priv (struct kcs_bmc*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
{
 struct npcm7xx_kcs_bmc *priv = kcs_bmc_priv(kcs_bmc);

 regmap_update_bits(priv->map, priv->reg->ctl, KCS_CTL_IBFIE,
      enable ? KCS_CTL_IBFIE : 0);

 regmap_update_bits(priv->map, priv->reg->ie, KCS_IE_IRQE | KCS_IE_HIRQE,
      enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);
}
