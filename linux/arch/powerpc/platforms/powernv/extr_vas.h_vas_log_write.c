
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vas_window {int winid; scalar_t__ tx_win; } ;


 int pr_debug (char*,char*,int ,char*,void*,scalar_t__) ;

__attribute__((used)) static inline void vas_log_write(struct vas_window *win, char *name,
   void *regptr, u64 val)
{
 if (val)
  pr_debug("%swin #%d: %s reg %p, val 0x%016llx\n",
    win->tx_win ? "Tx" : "Rx", win->winid, name,
    regptr, val);
}
