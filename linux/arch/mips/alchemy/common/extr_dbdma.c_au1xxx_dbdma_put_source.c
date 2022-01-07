
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned long dma_addr_t ;
struct TYPE_6__ {TYPE_3__* put_ptr; TYPE_1__* chan_ptr; } ;
typedef TYPE_2__ chan_tab_t ;
struct TYPE_7__ {int dscr_cmd0; unsigned long dscr_source0; int dscr_cmd1; int dscr_nxtptr; } ;
typedef TYPE_3__ au1x_ddma_desc_t ;
struct TYPE_5__ {scalar_t__ ddma_dbell; } ;


 int DDMA_FLAGS_IE ;
 int DDMA_FLAGS_NOIE ;
 int DSCR_CMD0_IE ;
 int DSCR_CMD0_V ;
 int DSCR_GET_NXTPTR (int ) ;
 int dma_cache_wback_inv (unsigned long,int) ;
 TYPE_3__* phys_to_virt (int ) ;
 int wmb () ;

u32 au1xxx_dbdma_put_source(u32 chanid, dma_addr_t buf, int nbytes, u32 flags)
{
 chan_tab_t *ctp;
 au1x_ddma_desc_t *dp;





 ctp = *(chan_tab_t **)chanid;






 dp = ctp->put_ptr;





 if (dp->dscr_cmd0 & DSCR_CMD0_V)
  return 0;


 dp->dscr_source0 = buf & ~0UL;
 dp->dscr_cmd1 = nbytes;

 if (flags & DDMA_FLAGS_IE)
  dp->dscr_cmd0 |= DSCR_CMD0_IE;
 if (flags & DDMA_FLAGS_NOIE)
  dp->dscr_cmd0 &= ~DSCR_CMD0_IE;
 dma_cache_wback_inv((unsigned long)buf, nbytes);
 dp->dscr_cmd0 |= DSCR_CMD0_V;
 wmb();
 dma_cache_wback_inv((unsigned long)dp, sizeof(*dp));
 ctp->chan_ptr->ddma_dbell = 0;


 ctp->put_ptr = phys_to_virt(DSCR_GET_NXTPTR(dp->dscr_nxtptr));


 return nbytes;
}
