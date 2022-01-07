
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u32 ;
typedef int irqreturn_t ;
struct TYPE_7__ {TYPE_3__* cur_ptr; int chan_callparam; int (* chan_callback ) (int,int ) ;TYPE_2__* chan_ptr; } ;
typedef TYPE_1__ chan_tab_t ;
struct TYPE_8__ {scalar_t__ ddma_irq; } ;
typedef TYPE_2__ au1x_dma_chan_t ;
struct TYPE_9__ {int dscr_nxtptr; } ;
typedef TYPE_3__ au1x_ddma_desc_t ;
struct TYPE_10__ {size_t ddma_intstat; } ;


 int DSCR_GET_NXTPTR (int ) ;
 int IRQ_RETVAL (int) ;
 size_t __ffs (size_t) ;
 TYPE_1__** chan_tab_ptr ;
 TYPE_5__* dbdma_gptr ;
 TYPE_3__* phys_to_virt (int ) ;
 int stub1 (int,int ) ;
 int wmb () ;

__attribute__((used)) static irqreturn_t dbdma_interrupt(int irq, void *dev_id)
{
 u32 intstat;
 u32 chan_index;
 chan_tab_t *ctp;
 au1x_ddma_desc_t *dp;
 au1x_dma_chan_t *cp;

 intstat = dbdma_gptr->ddma_intstat;
 wmb();
 chan_index = __ffs(intstat);

 ctp = chan_tab_ptr[chan_index];
 cp = ctp->chan_ptr;
 dp = ctp->cur_ptr;


 cp->ddma_irq = 0;
 wmb();

 if (ctp->chan_callback)
  ctp->chan_callback(irq, ctp->chan_callparam);

 ctp->cur_ptr = phys_to_virt(DSCR_GET_NXTPTR(dp->dscr_nxtptr));
 return IRQ_RETVAL(1);
}
