
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_ahci_priv {int port_mask; } ;


 int BIT (int) ;
 int SATA_TOP_MAX_PHYS ;
 int brcm_sata_phy_disable (struct brcm_ahci_priv*,int) ;

__attribute__((used)) static void brcm_sata_phys_disable(struct brcm_ahci_priv *priv)
{
 int i;

 for (i = 0; i < SATA_TOP_MAX_PHYS; i++)
  if (priv->port_mask & BIT(i))
   brcm_sata_phy_disable(priv, i);
}
