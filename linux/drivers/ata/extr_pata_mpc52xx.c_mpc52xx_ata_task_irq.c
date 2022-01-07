
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc52xx_ata_priv {int waiting_for_dma; int dmatsk; } ;
typedef int irqreturn_t ;


 int ATA_DMA_INTR ;
 int IRQ_HANDLED ;
 scalar_t__ bcom_buffer_done (int ) ;
 int bcom_retrieve_buffer (int ,int *,int *) ;

__attribute__((used)) static irqreturn_t
mpc52xx_ata_task_irq(int irq, void *vpriv)
{
 struct mpc52xx_ata_priv *priv = vpriv;
 while (bcom_buffer_done(priv->dmatsk))
  bcom_retrieve_buffer(priv->dmatsk, ((void*)0), ((void*)0));

 priv->waiting_for_dma |= ATA_DMA_INTR;

 return IRQ_HANDLED;
}
