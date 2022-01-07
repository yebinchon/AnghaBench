
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_2__* get_ptr; } ;
typedef TYPE_1__ chan_tab_t ;
struct TYPE_5__ {int dscr_cmd0; int dscr_cmd1; int dscr_nxtptr; scalar_t__ dscr_stat; int dscr_dest0; } ;
typedef TYPE_2__ au1x_ddma_desc_t ;


 int DSCR_CMD0_V ;
 int DSCR_GET_NXTPTR (int ) ;
 TYPE_2__* phys_to_virt (int ) ;

u32 au1xxx_dbdma_get_dest(u32 chanid, void **buf, int *nbytes)
{
 chan_tab_t *ctp;
 au1x_ddma_desc_t *dp;
 u32 rv;





 ctp = *((chan_tab_t **)chanid);






 dp = ctp->get_ptr;





 if (dp->dscr_cmd0 & DSCR_CMD0_V)
  return 0;


 *buf = (void *)(phys_to_virt(dp->dscr_dest0));
 *nbytes = dp->dscr_cmd1;
 rv = dp->dscr_stat;


 ctp->get_ptr = phys_to_virt(DSCR_GET_NXTPTR(dp->dscr_nxtptr));


 return rv;
}
