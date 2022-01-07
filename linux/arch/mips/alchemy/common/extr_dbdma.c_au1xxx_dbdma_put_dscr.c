
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {TYPE_3__* put_ptr; TYPE_1__* chan_ptr; } ;
typedef TYPE_2__ chan_tab_t ;
struct TYPE_8__ {int dscr_cmd0; int dscr_nxtptr; scalar_t__ dscr_cmd1; int dscr_source1; int dscr_dest1; int dscr_source0; int dscr_dest0; } ;
typedef TYPE_3__ au1x_ddma_desc_t ;
struct TYPE_6__ {scalar_t__ ddma_dbell; } ;


 int DSCR_CMD0_IE ;
 int DSCR_CMD0_V ;
 int DSCR_GET_NXTPTR (int ) ;
 TYPE_3__* phys_to_virt (int ) ;

u32 au1xxx_dbdma_put_dscr(u32 chanid, au1x_ddma_desc_t *dscr)
{
 chan_tab_t *ctp;
 au1x_ddma_desc_t *dp;
 u32 nbytes = 0;





 ctp = *((chan_tab_t **)chanid);






 dp = ctp->put_ptr;





 if (dp->dscr_cmd0 & DSCR_CMD0_V)
  return 0;


 dp->dscr_dest0 = dscr->dscr_dest0;
 dp->dscr_source0 = dscr->dscr_source0;
 dp->dscr_dest1 = dscr->dscr_dest1;
 dp->dscr_source1 = dscr->dscr_source1;
 dp->dscr_cmd1 = dscr->dscr_cmd1;
 nbytes = dscr->dscr_cmd1;

 dp->dscr_cmd0 &= ~DSCR_CMD0_IE;
 dp->dscr_cmd0 |= dscr->dscr_cmd0 | DSCR_CMD0_V;
 ctp->chan_ptr->ddma_dbell = 0;


 ctp->put_ptr = phys_to_virt(DSCR_GET_NXTPTR(dp->dscr_nxtptr));


 return nbytes;
}
