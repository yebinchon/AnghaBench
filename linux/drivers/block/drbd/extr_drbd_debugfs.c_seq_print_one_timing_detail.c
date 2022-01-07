
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct drbd_thread_timing_details {scalar_t__ cb_nr; int cb_addr; int line; int caller_fn; scalar_t__ start_jif; } ;


 int jiffies_to_msecs (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static void seq_print_one_timing_detail(struct seq_file *m,
 const struct drbd_thread_timing_details *tdp,
 unsigned long now)
{
 struct drbd_thread_timing_details td;


 do {
  td = *tdp;
 } while (td.cb_nr != tdp->cb_nr);
 if (!td.cb_addr)
  return;
 seq_printf(m, "%u\t%d\t%s:%u\t%ps\n",
   td.cb_nr,
   jiffies_to_msecs(now - td.start_jif),
   td.caller_fn, td.line,
   td.cb_addr);
}
