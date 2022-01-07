
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pi; } ;


 int BLK_STS_IOERR ;
 scalar_t__ PF_MAX_RETRIES ;
 int STAT_BUSY ;
 int STAT_DRQ ;
 int STAT_ERR ;
 int do_pf_read_start ;
 int next_request (int ) ;
 int pf_buf ;
 TYPE_1__* pf_current ;
 scalar_t__ pf_next_buf () ;
 int pf_req_sense (TYPE_1__*,int ) ;
 scalar_t__ pf_retries ;
 int pf_wait (TYPE_1__*,int ,int,char*,char*) ;
 int pi_disconnect (int ) ;
 int pi_do_claimed (int ,int ) ;
 int pi_read_block (int ,int ,int) ;

__attribute__((used)) static void do_pf_read_drq(void)
{
 while (1) {
  if (pf_wait(pf_current, STAT_BUSY, STAT_DRQ | STAT_ERR,
       "read block", "completion") & STAT_ERR) {
   pi_disconnect(pf_current->pi);
   if (pf_retries < PF_MAX_RETRIES) {
    pf_req_sense(pf_current, 0);
    pf_retries++;
    pi_do_claimed(pf_current->pi, do_pf_read_start);
    return;
   }
   next_request(BLK_STS_IOERR);
   return;
  }
  pi_read_block(pf_current->pi, pf_buf, 512);
  if (pf_next_buf())
   break;
 }
 pi_disconnect(pf_current->pi);
 next_request(0);
}
