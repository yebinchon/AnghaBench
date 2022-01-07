
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int next_lch; int next_linked_ch; } ;
struct TYPE_3__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int CLNK_CTRL ;
 TYPE_2__* dma_chan ;
 scalar_t__ dma_omap1 () ;
 scalar_t__ dma_omap2plus () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;

__attribute__((used)) static inline void enable_lnk(int lch)
{
 u32 l;

 l = p->dma_read(CLNK_CTRL, lch);

 if (dma_omap1())
  l &= ~(1 << 14);


 if (dma_chan[lch].next_lch != -1)
  l = dma_chan[lch].next_lch | (1 << 15);


 if (dma_omap2plus())
  if (dma_chan[lch].next_linked_ch != -1)
   l = dma_chan[lch].next_linked_ch | (1 << 15);


 p->dma_write(l, CLNK_CTRL, lch);
}
