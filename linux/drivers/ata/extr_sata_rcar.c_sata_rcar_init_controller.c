
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_rcar_priv {int type; int sataint_mask; } ;
struct ata_host {int dev; struct sata_rcar_priv* private_data; } ;






 int SATAINTMASK_ALL_GEN1 ;
 int SATAINTMASK_ALL_GEN2 ;
 int dev_warn (int ,char*) ;
 int sata_rcar_gen1_phy_init (struct sata_rcar_priv*) ;
 int sata_rcar_gen2_phy_init (struct sata_rcar_priv*) ;
 int sata_rcar_init_module (struct sata_rcar_priv*) ;

__attribute__((used)) static void sata_rcar_init_controller(struct ata_host *host)
{
 struct sata_rcar_priv *priv = host->private_data;

 priv->sataint_mask = SATAINTMASK_ALL_GEN2;


 switch (priv->type) {
 case 131:
  priv->sataint_mask = SATAINTMASK_ALL_GEN1;
  sata_rcar_gen1_phy_init(priv);
  break;
 case 130:
 case 128:
  sata_rcar_gen2_phy_init(priv);
  break;
 case 129:
  break;
 default:
  dev_warn(host->dev, "SATA phy is not initialized\n");
  break;
 }

 sata_rcar_init_module(priv);
}
