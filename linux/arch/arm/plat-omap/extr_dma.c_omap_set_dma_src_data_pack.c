
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int CSDP ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;

void omap_set_dma_src_data_pack(int lch, int enable)
{
 u32 l;

 l = p->dma_read(CSDP, lch);
 l &= ~(1 << 6);
 if (enable)
  l |= (1 << 6);
 p->dma_write(l, CSDP, lch);
}
