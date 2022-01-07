
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_gcr; int dma_ocp_sysconfig; int dma_irqenable_l1; int dma_irqenable_l0; } ;
struct TYPE_3__ {int (* dma_read ) (int ,int ) ;} ;


 int GCR ;
 int IRQENABLE_L0 ;
 int IRQENABLE_L1 ;
 int OCP_SYSCONFIG ;
 TYPE_2__ omap_dma_global_context ;
 TYPE_1__* p ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;

void omap_dma_global_context_save(void)
{
 omap_dma_global_context.dma_irqenable_l0 =
  p->dma_read(IRQENABLE_L0, 0);
 omap_dma_global_context.dma_irqenable_l1 =
  p->dma_read(IRQENABLE_L1, 0);
 omap_dma_global_context.dma_ocp_sysconfig =
  p->dma_read(OCP_SYSCONFIG, 0);
 omap_dma_global_context.dma_gcr = p->dma_read(GCR, 0);
}
