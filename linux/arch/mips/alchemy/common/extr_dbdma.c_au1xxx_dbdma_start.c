
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int cur_ptr; TYPE_2__* chan_ptr; } ;
typedef TYPE_1__ chan_tab_t ;
struct TYPE_4__ {scalar_t__ ddma_dbell; int ddma_cfg; int ddma_desptr; } ;
typedef TYPE_2__ au1x_dma_chan_t ;


 int DDMA_CFG_EN ;
 int virt_to_phys (int ) ;
 int wmb () ;

void au1xxx_dbdma_start(u32 chanid)
{
 chan_tab_t *ctp;
 au1x_dma_chan_t *cp;

 ctp = *((chan_tab_t **)chanid);
 cp = ctp->chan_ptr;
 cp->ddma_desptr = virt_to_phys(ctp->cur_ptr);
 cp->ddma_cfg |= DDMA_CFG_EN;
 wmb();
 cp->ddma_dbell = 0;
 wmb();
}
