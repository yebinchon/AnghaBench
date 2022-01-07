
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int dummy; } ;
struct lev_generic {int type; int b; } ;
struct lev_copyexec_result_enable {int dummy; } ;
struct lev_copyexec_result_data {int dummy; } ;
struct lev_copyexec_result_connect {int hostname_length; } ;
 int copyexec_main_le_start (struct lev_start*) ;
 int default_replay_logevent (struct lev_generic*,int) ;
 int dump_connect (struct lev_copyexec_result_connect*) ;
 int dump_data (struct lev_copyexec_result_data*) ;
 int dump_enable (struct lev_copyexec_result_enable*) ;
 scalar_t__ end_time ;
 int exit (int ) ;
 int fclose (int ) ;
 int fflush (int ) ;
 int kprintf (char*,int,int ) ;
 int log_cur_pos () ;
 scalar_t__ now ;
 int out ;

int dump_copyexec_results_replay_logevent (struct lev_generic *E, int size) {
  int s;
  if (now > end_time) {
    fflush (out);
    fclose (out);
    exit (0);
  }
  switch (E->type) {
    case 129:
      if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
      s = 24 + ((E->b + 3) & -4);
      if (size < s) { return -2; }
      return copyexec_main_le_start ((struct lev_start *) E) >= 0 ? s : -1;
    case 132:
    case 128:
    case 133:
    case 131:
    case 130:
      return default_replay_logevent (E, size);
    case 137:
      s = sizeof (struct lev_copyexec_result_connect);
      if (size < s) { return -2; }
      s += ((struct lev_copyexec_result_connect *) E)->hostname_length;
      if (size < s) { return -2; }
      dump_connect ((struct lev_copyexec_result_connect *) E);
      return s;
    case 136:
      s = sizeof (struct lev_copyexec_result_data);
      if (size < s) { return -2; }
      dump_data ( (struct lev_copyexec_result_data *) E);
      return s;
    case 135:
    case 134:
      s = sizeof (struct lev_copyexec_result_enable);
      if (size < s) { return -2; }
      dump_enable ((struct lev_copyexec_result_enable *) E);
      return s;
  }

  kprintf ("unknown log event type %08x at position %lld\n", E->type, log_cur_pos ());

  return -3;

}
