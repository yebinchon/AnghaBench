
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_tis_spi_phy {int priv; int iobuf; struct spi_device* spi_device; } ;
struct spi_device {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SPI_FRAMESIZE ;
 int devm_kmalloc (int *,int ,int ) ;
 struct tpm_tis_spi_phy* devm_kzalloc (int *,int,int ) ;
 int tpm_spi_phy_ops ;
 int tpm_tis_core_init (int *,int *,int,int *,int *) ;

__attribute__((used)) static int tpm_tis_spi_probe(struct spi_device *dev)
{
 struct tpm_tis_spi_phy *phy;
 int irq;

 phy = devm_kzalloc(&dev->dev, sizeof(struct tpm_tis_spi_phy),
      GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 phy->spi_device = dev;

 phy->iobuf = devm_kmalloc(&dev->dev, MAX_SPI_FRAMESIZE, GFP_KERNEL);
 if (!phy->iobuf)
  return -ENOMEM;


 if (dev->irq > 0)
  irq = dev->irq;
 else
  irq = -1;

 return tpm_tis_core_init(&dev->dev, &phy->priv, irq, &tpm_spi_phy_ops,
     ((void*)0));
}
