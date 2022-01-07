
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dev_id; } ;
struct TYPE_5__ {int dma_gcr; int dma_ocp_sysconfig; int dma_irqenable_l0; int dma_irqenable_l1; } ;
struct TYPE_4__ {int (* dma_write ) (int,int ,int ) ;} ;


 int DMA_ROMCODE_BUG ;
 int GCR ;
 int IRQENABLE_L0 ;
 int IRQENABLE_L1 ;
 int IRQSTATUS_L0 ;
 scalar_t__ IS_DMA_ERRATA (int ) ;
 int OCP_SYSCONFIG ;
 TYPE_3__* dma_chan ;
 int dma_chan_count ;
 int omap_clear_dma (int) ;
 TYPE_2__ omap_dma_global_context ;
 TYPE_1__* p ;
 int stub1 (int,int ,int ) ;
 int stub2 (int,int ,int ) ;
 int stub3 (int,int ,int ) ;
 int stub4 (int,int ,int ) ;
 int stub5 (int,int ,int ) ;

void omap_dma_global_context_restore(void)
{
 int ch;

 p->dma_write(omap_dma_global_context.dma_gcr, GCR, 0);
 p->dma_write(omap_dma_global_context.dma_ocp_sysconfig,
  OCP_SYSCONFIG, 0);
 p->dma_write(omap_dma_global_context.dma_irqenable_l0,
  IRQENABLE_L0, 0);
 p->dma_write(omap_dma_global_context.dma_irqenable_l1,
  IRQENABLE_L1, 0);

 if (IS_DMA_ERRATA(DMA_ROMCODE_BUG))
  p->dma_write(0x3 , IRQSTATUS_L0, 0);

 for (ch = 0; ch < dma_chan_count; ch++)
  if (dma_chan[ch].dev_id != -1)
   omap_clear_dma(ch);
}
