
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int dummy; } ;
struct lev_generic {int type; int b; } ;
struct lev_copyexec_result_enable {int random_tag; } ;
struct lev_copyexec_result_data {int dummy; } ;
struct lev_copyexec_result_connect {int hostname_length; } ;
 int copyexec_result_le_start (struct lev_start*) ;
 int default_replay_logevent (struct lev_generic*,int) ;
 int kprintf (char*,int const,int ) ;
 int log_cur_pos () ;
 int set_connect (struct lev_copyexec_result_connect*) ;
 int set_enable (int ,int) ;
 int set_result (int *,struct lev_copyexec_result_data*) ;

int copyexec_result_replay_logevent (struct lev_generic *E, int size) {
  int s;
  switch (E->type) {
    case 130:
      if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
      s = 24 + ((E->b + 3) & -4);
      if (size < s) { return -2; }
      return copyexec_result_le_start ((struct lev_start *) E) >= 0 ? s : -1;
    case 133:
    case 128:
    case 134:
    case 132:
    case 131:
    case 129:
      return default_replay_logevent (E, size);
    case 138:
      s = sizeof (struct lev_copyexec_result_connect);
      if (size < s) { return -2; }
      s += ((struct lev_copyexec_result_connect *) E)->hostname_length;
      if (size < s) { return -2; }
      set_connect ((struct lev_copyexec_result_connect *) E);
      return s;
    case 137:
      s = sizeof (struct lev_copyexec_result_data);
      if (size < s) { return -2; }
      set_result (((void*)0), (struct lev_copyexec_result_data *) E);
      return s;
    case 136:
    case 135:
      s = sizeof (struct lev_copyexec_result_enable);
      if (size < s) { return -2; }
      set_enable (((struct lev_copyexec_result_enable *) E)->random_tag, (E->type == 135) ? 1 : 0 );
      return s;
  }

  kprintf ("unknown log event type %08x at position %lld\n", E->type, log_cur_pos());

  return -3;

}
