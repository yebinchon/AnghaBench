
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {TYPE_2__* chan_ptr; } ;
typedef TYPE_1__ chan_tab_t ;
struct TYPE_4__ {scalar_t__ ddma_bytecnt; } ;
typedef TYPE_2__ au1x_dma_chan_t ;


 int wmb () ;

u32 au1xxx_get_dma_residue(u32 chanid)
{
 chan_tab_t *ctp;
 au1x_dma_chan_t *cp;
 u32 rv;

 ctp = *((chan_tab_t **)chanid);
 cp = ctp->chan_ptr;


 rv = cp->ddma_bytecnt;
 wmb();

 return rv;
}
