
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_2__* chan_desc_base; TYPE_2__* cur_ptr; TYPE_2__* put_ptr; TYPE_2__* get_ptr; } ;
typedef TYPE_1__ chan_tab_t ;
struct TYPE_5__ {int dscr_nxtptr; scalar_t__ sw_status; int dscr_cmd0; } ;
typedef TYPE_2__ au1x_ddma_desc_t ;


 int DSCR_CMD0_V ;
 int DSCR_GET_NXTPTR (int ) ;
 int au1xxx_dbdma_stop (scalar_t__) ;
 TYPE_2__* phys_to_virt (int ) ;

void au1xxx_dbdma_reset(u32 chanid)
{
 chan_tab_t *ctp;
 au1x_ddma_desc_t *dp;

 au1xxx_dbdma_stop(chanid);

 ctp = *((chan_tab_t **)chanid);
 ctp->get_ptr = ctp->put_ptr = ctp->cur_ptr = ctp->chan_desc_base;


 dp = ctp->chan_desc_base;

 do {
  dp->dscr_cmd0 &= ~DSCR_CMD0_V;





  dp->sw_status = 0;
  dp = phys_to_virt(DSCR_GET_NXTPTR(dp->dscr_nxtptr));
 } while (dp != ctp->chan_desc_base);
}
