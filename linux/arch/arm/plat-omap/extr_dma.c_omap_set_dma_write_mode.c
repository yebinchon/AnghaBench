
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_dma_write_mode { ____Placeholder_omap_dma_write_mode } omap_dma_write_mode ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int CSDP ;
 scalar_t__ dma_omap2plus () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;

void omap_set_dma_write_mode(int lch, enum omap_dma_write_mode mode)
{
 if (dma_omap2plus()) {
  u32 csdp;

  csdp = p->dma_read(CSDP, lch);
  csdp &= ~(0x3 << 16);
  csdp |= (mode << 16);
  p->dma_write(csdp, CSDP, lch);
 }
}
