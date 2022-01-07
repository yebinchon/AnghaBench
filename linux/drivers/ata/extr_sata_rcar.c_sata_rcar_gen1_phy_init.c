
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_rcar_priv {int dummy; } ;


 int SATAPCTLR1_REG ;
 int SATAPCTLR2_REG ;
 int SATAPCTLR3_REG ;
 int SATAPCTLR4_REG ;
 int sata_rcar_gen1_phy_preinit (struct sata_rcar_priv*) ;
 int sata_rcar_gen1_phy_write (struct sata_rcar_priv*,int ,int,int) ;

__attribute__((used)) static void sata_rcar_gen1_phy_init(struct sata_rcar_priv *priv)
{
 sata_rcar_gen1_phy_preinit(priv);
 sata_rcar_gen1_phy_write(priv, SATAPCTLR1_REG, 0x00200188, 0);
 sata_rcar_gen1_phy_write(priv, SATAPCTLR1_REG, 0x00200188, 1);
 sata_rcar_gen1_phy_write(priv, SATAPCTLR3_REG, 0x0000A061, 0);
 sata_rcar_gen1_phy_write(priv, SATAPCTLR2_REG, 0x20000000, 0);
 sata_rcar_gen1_phy_write(priv, SATAPCTLR2_REG, 0x20000000, 1);
 sata_rcar_gen1_phy_write(priv, SATAPCTLR4_REG, 0x28E80000, 0);
}
