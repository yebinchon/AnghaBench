
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_log_pos ;
 scalar_t__ dump_timestamp ;
 int fprintf (int ,char*,char const* const,...) ;
 int log_cur_pos () ;
 scalar_t__ now ;
 int out ;
 scalar_t__ start_time ;

inline int dump_line_header (const char *const tp, char ch) {
  if (start_time > now) { return -1; }
  if (dump_log_pos) { fprintf (out, "%lld\t", log_cur_pos()); }
  if (dump_timestamp) { fprintf (out, "%d\t", now); }
  fprintf (out, "%s%c", tp, ch);
  return 0;
}
