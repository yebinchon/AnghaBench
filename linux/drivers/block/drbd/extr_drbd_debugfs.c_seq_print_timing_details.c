
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct drbd_thread_timing_details {int dummy; } ;


 unsigned int DRBD_THREAD_DETAILS_HIST ;
 int seq_print_one_timing_detail (struct seq_file*,struct drbd_thread_timing_details*,unsigned long) ;
 int seq_printf (struct seq_file*,char*,char const*) ;

__attribute__((used)) static void seq_print_timing_details(struct seq_file *m,
  const char *title,
  unsigned int cb_nr, struct drbd_thread_timing_details *tdp, unsigned long now)
{
 unsigned int start_idx;
 unsigned int i;

 seq_printf(m, "%s\n", title);




 start_idx = cb_nr % DRBD_THREAD_DETAILS_HIST;
 for (i = start_idx; i < DRBD_THREAD_DETAILS_HIST; i++)
  seq_print_one_timing_detail(m, tdp+i, now);
 for (i = 0; i < start_idx; i++)
  seq_print_one_timing_detail(m, tdp+i, now);
}
