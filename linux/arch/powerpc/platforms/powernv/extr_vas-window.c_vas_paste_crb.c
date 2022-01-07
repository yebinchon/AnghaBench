
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vas_window {int winid; void* paste_kaddr; scalar_t__ nx_win; } ;


 int EINVAL ;
 int LRFIFO_PUSH ;
 int RMA_LSMP_REPORT_ENABLE ;
 int SET_FIELD (int ,unsigned long long,int) ;
 int VREG (int ) ;
 int WARN_ON_ONCE (int) ;
 int current ;
 int pr_debug (char*,int ,int ) ;
 int read_hvwc_reg (struct vas_window*,int ) ;
 int trace_vas_paste_crb (int ,struct vas_window*) ;
 int vas_paste (void*,int) ;

int vas_paste_crb(struct vas_window *txwin, int offset, bool re)
{
 int rc;
 void *addr;
 uint64_t val;

 trace_vas_paste_crb(current, txwin);






 WARN_ON_ONCE(txwin->nx_win && !re);

 addr = txwin->paste_kaddr;
 if (re) {




  val = SET_FIELD(RMA_LSMP_REPORT_ENABLE, 0ULL, 1);
  addr += val;
 }





 rc = vas_paste(addr, offset);
 if (rc == 2)
  rc = 0;
 else
  rc = -EINVAL;

 pr_debug("Txwin #%d: Msg count %llu\n", txwin->winid,
   read_hvwc_reg(txwin, VREG(LRFIFO_PUSH)));

 return rc;
}
