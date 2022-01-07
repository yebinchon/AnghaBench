
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_dma_channel {int phys; int desc_base; int dev; } ;


 int LTQ_DESC_NUM ;
 int LTQ_DESC_SIZE ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int ltq_dma_close (struct ltq_dma_channel*) ;

void
ltq_dma_free(struct ltq_dma_channel *ch)
{
 if (!ch->desc_base)
  return;
 ltq_dma_close(ch);
 dma_free_coherent(ch->dev, LTQ_DESC_NUM * LTQ_DESC_SIZE,
  ch->desc_base, ch->phys);
}
