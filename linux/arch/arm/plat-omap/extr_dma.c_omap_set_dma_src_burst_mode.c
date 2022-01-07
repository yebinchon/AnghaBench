
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_dma_burst_mode { ____Placeholder_omap_dma_burst_mode } omap_dma_burst_mode ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int BUG () ;
 int CSDP ;




 int dma_omap2plus () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;

void omap_set_dma_src_burst_mode(int lch, enum omap_dma_burst_mode burst_mode)
{
 unsigned int burst = 0;
 u32 l;

 l = p->dma_read(CSDP, lch);
 l &= ~(0x03 << 7);

 switch (burst_mode) {
 case 128:
  break;
 case 130:
  if (dma_omap2plus())
   burst = 0x1;
  else
   burst = 0x2;
  break;
 case 129:
  if (dma_omap2plus()) {
   burst = 0x2;
   break;
  }





 case 131:
  if (dma_omap2plus()) {
   burst = 0x3;
   break;
  }


 default:
  BUG();
 }

 l |= (burst << 7);
 p->dma_write(l, CSDP, lch);
}
