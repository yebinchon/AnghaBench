
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pi; } ;


 int ATAPI_WRITE_10 ;
 int BLK_STS_IOERR ;
 scalar_t__ PF_MAX_RETRIES ;
 int PF_TMO ;
 int STAT_BUSY ;
 int STAT_DRQ ;
 int STAT_ERR ;
 int do_pf_write_done ;
 int next_request (int ) ;
 int nice ;
 int pf_block ;
 int pf_buf ;
 int pf_busy ;
 TYPE_1__* pf_current ;
 scalar_t__ pf_mask ;
 scalar_t__ pf_next_buf () ;
 int pf_ready ;
 scalar_t__ pf_retries ;
 int pf_run ;
 scalar_t__ pf_start (TYPE_1__*,int ,int ,int ) ;
 int pf_wait (TYPE_1__*,int ,int,char*,char*) ;
 int pi_disconnect (int ) ;
 int pi_do_claimed (int ,void (*) ()) ;
 int pi_write_block (int ,int ,int) ;
 int ps_set_intr (int ,int ,int ,int ) ;

__attribute__((used)) static void do_pf_write_start(void)
{
 pf_busy = 1;

 if (pf_start(pf_current, ATAPI_WRITE_10, pf_block, pf_run)) {
  pi_disconnect(pf_current->pi);
  if (pf_retries < PF_MAX_RETRIES) {
   pf_retries++;
   pi_do_claimed(pf_current->pi, do_pf_write_start);
   return;
  }
  next_request(BLK_STS_IOERR);
  return;
 }

 while (1) {
  if (pf_wait(pf_current, STAT_BUSY, STAT_DRQ | STAT_ERR,
       "write block", "data wait") & STAT_ERR) {
   pi_disconnect(pf_current->pi);
   if (pf_retries < PF_MAX_RETRIES) {
    pf_retries++;
    pi_do_claimed(pf_current->pi, do_pf_write_start);
    return;
   }
   next_request(BLK_STS_IOERR);
   return;
  }
  pi_write_block(pf_current->pi, pf_buf, 512);
  if (pf_next_buf())
   break;
 }
 pf_mask = 0;
 ps_set_intr(do_pf_write_done, pf_ready, PF_TMO, nice);
}
