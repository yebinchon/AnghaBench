
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hwrng {scalar_t__ priv; } ;
struct amd768_priv {int pcidev; } ;


 int BIT (int) ;
 int pci_read_config_byte (int ,int,int *) ;
 int pci_write_config_byte (int ,int,int ) ;

__attribute__((used)) static int amd_rng_init(struct hwrng *rng)
{
 struct amd768_priv *priv = (struct amd768_priv *)rng->priv;
 u8 rnen;

 pci_read_config_byte(priv->pcidev, 0x40, &rnen);
 rnen |= BIT(7);
 pci_write_config_byte(priv->pcidev, 0x40, rnen);

 pci_read_config_byte(priv->pcidev, 0x41, &rnen);
 rnen |= BIT(7);
 pci_write_config_byte(priv->pcidev, 0x41, rnen);

 return 0;
}
