
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_log_pos ;
 scalar_t__ dump_timestamp ;
 int fprintf (int ,char*,...) ;
 int log_cur_pos () ;
 int now ;
 int out ;

inline void dump_line_header (const char* const msg, int t) {
  if (dump_log_pos) { fprintf (out, "%lld\t", log_cur_pos()); }
  if (dump_timestamp) { fprintf (out, "%d\t", now); }
  fprintf (out, "LEV_NEWS_%s", msg);
  if (t >= 0) {
    fprintf (out, "+%d", t);
  }
  fprintf (out, "\t");
}
