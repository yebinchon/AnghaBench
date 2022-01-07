
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_log_pos ;
 scalar_t__ dump_timestamp ;
 int fprintf (int ,char*,...) ;
 char const* const log_cur_pos () ;
 int now ;
 int out ;

__attribute__((used)) static int dump_line_header (const char *const msg) {
  if (dump_log_pos) { fprintf (out, "%lld\t", log_cur_pos()); }
  if (dump_timestamp) { fprintf (out, "%d\t", now); }
  fprintf (out, "%s", msg);
  return 1;
}
