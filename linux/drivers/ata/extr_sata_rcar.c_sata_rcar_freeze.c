
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sata_rcar_priv {scalar_t__ base; int sataint_mask; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_rcar_priv* private_data; } ;


 scalar_t__ SATAINTMASK_REG ;
 int ata_sff_freeze (struct ata_port*) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void sata_rcar_freeze(struct ata_port *ap)
{
 struct sata_rcar_priv *priv = ap->host->private_data;


 iowrite32(priv->sataint_mask, priv->base + SATAINTMASK_REG);

 ata_sff_freeze(ap);
}
