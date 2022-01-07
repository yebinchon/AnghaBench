
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct npcm7xx_kcs_bmc {int map; } ;
struct kcs_bmc {int dummy; } ;


 int WARN (int,char*,int) ;
 struct npcm7xx_kcs_bmc* kcs_bmc_priv (struct kcs_bmc*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void npcm7xx_kcs_outb(struct kcs_bmc *kcs_bmc, u32 reg, u8 data)
{
 struct npcm7xx_kcs_bmc *priv = kcs_bmc_priv(kcs_bmc);
 int rc;

 rc = regmap_write(priv->map, reg, data);
 WARN(rc != 0, "regmap_write() failed: %d\n", rc);
}
