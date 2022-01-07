
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_log_pos ;
 int fprintf (int ,char*,long long) ;
 int stdout ;

inline void dump_line_header (long long pos) {
  if (dump_log_pos) { fprintf (stdout, "%lld\t", pos); }
}
