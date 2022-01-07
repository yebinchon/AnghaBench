
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_log_pos ;
 scalar_t__ dump_timestamp ;
 int fprintf (int ,char*,int) ;
 int log_cur_pos () ;
 int now ;
 int stdout ;

inline void dump_line_header (void) {
  if (dump_log_pos) { fprintf (stdout, "%lld\t", log_cur_pos()); }
  if (dump_timestamp) { fprintf (stdout, "%d\t", now); }
}
