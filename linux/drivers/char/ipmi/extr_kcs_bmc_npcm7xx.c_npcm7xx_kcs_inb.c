
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct npcm7xx_kcs_bmc {int map; } ;
struct kcs_bmc {int dummy; } ;


 int WARN (int,char*,int) ;
 struct npcm7xx_kcs_bmc* kcs_bmc_priv (struct kcs_bmc*) ;
 int regmap_read (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static u8 npcm7xx_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)
{
 struct npcm7xx_kcs_bmc *priv = kcs_bmc_priv(kcs_bmc);
 u32 val = 0;
 int rc;

 rc = regmap_read(priv->map, reg, &val);
 WARN(rc != 0, "regmap_read() failed: %d\n", rc);

 return rc == 0 ? (u8)val : 0;
}
