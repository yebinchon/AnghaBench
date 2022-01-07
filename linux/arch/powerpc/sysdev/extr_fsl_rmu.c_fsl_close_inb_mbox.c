
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rio_priv {int dev; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_4__ {int size; int phys; int virt; } ;
struct fsl_rmu {TYPE_2__ msg_rx_ring; TYPE_1__* msg_regs; } ;
struct TYPE_3__ {int imr; } ;


 struct fsl_rmu* GET_RMM_HANDLE (struct rio_mport*) ;
 int IRQ_RIO_RX (struct rio_mport*) ;
 int RIO_MAX_MSG_SIZE ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_irq (int ,void*) ;
 int out_be32 (int *,int ) ;

void fsl_close_inb_mbox(struct rio_mport *mport, int mbox)
{
 struct rio_priv *priv = mport->priv;
 struct fsl_rmu *rmu = GET_RMM_HANDLE(mport);


 out_be32(&rmu->msg_regs->imr, 0);


 dma_free_coherent(priv->dev, rmu->msg_rx_ring.size * RIO_MAX_MSG_SIZE,
 rmu->msg_rx_ring.virt, rmu->msg_rx_ring.phys);


 free_irq(IRQ_RIO_RX(mport), (void *)mport);
}
