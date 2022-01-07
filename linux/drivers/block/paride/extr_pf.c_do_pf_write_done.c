
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pi; } ;


 int BLK_STS_IOERR ;
 scalar_t__ PF_MAX_RETRIES ;
 int STAT_BUSY ;
 int STAT_ERR ;
 int do_pf_write_start ;
 int next_request (int ) ;
 TYPE_1__* pf_current ;
 scalar_t__ pf_retries ;
 int pf_wait (TYPE_1__*,int ,int ,char*,char*) ;
 int pi_disconnect (int ) ;
 int pi_do_claimed (int ,int ) ;

__attribute__((used)) static void do_pf_write_done(void)
{
 if (pf_wait(pf_current, STAT_BUSY, 0, "write block", "done") & STAT_ERR) {
  pi_disconnect(pf_current->pi);
  if (pf_retries < PF_MAX_RETRIES) {
   pf_retries++;
   pi_do_claimed(pf_current->pi, do_pf_write_start);
   return;
  }
  next_request(BLK_STS_IOERR);
  return;
 }
 pi_disconnect(pf_current->pi);
 next_request(0);
}
