
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pi; } ;


 int ATAPI_READ_10 ;
 int BLK_STS_IOERR ;
 scalar_t__ PF_MAX_RETRIES ;
 int PF_TMO ;
 int STAT_DRQ ;
 int do_pf_read_drq ;
 int next_request (int ) ;
 int nice ;
 int pf_block ;
 int pf_busy ;
 TYPE_1__* pf_current ;
 int pf_mask ;
 int pf_ready ;
 scalar_t__ pf_retries ;
 int pf_run ;
 scalar_t__ pf_start (TYPE_1__*,int ,int ,int ) ;
 int pi_disconnect (int ) ;
 int pi_do_claimed (int ,void (*) ()) ;
 int ps_set_intr (int ,int ,int ,int ) ;

__attribute__((used)) static void do_pf_read_start(void)
{
 pf_busy = 1;

 if (pf_start(pf_current, ATAPI_READ_10, pf_block, pf_run)) {
  pi_disconnect(pf_current->pi);
  if (pf_retries < PF_MAX_RETRIES) {
   pf_retries++;
   pi_do_claimed(pf_current->pi, do_pf_read_start);
   return;
  }
  next_request(BLK_STS_IOERR);
  return;
 }
 pf_mask = STAT_DRQ;
 ps_set_intr(do_pf_read_drq, pf_ready, PF_TMO, nice);
}
