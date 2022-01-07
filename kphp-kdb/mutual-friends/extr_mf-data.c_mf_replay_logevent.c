
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int dummy; } ;
struct lev_generic {int type; int b; } ;
 int MEMORY_CHANGES_PERCENT ;
 int STANDARD_LOG_EVENT_HANDLER (int ,int ) ;
 scalar_t__ _eventsLeft ;
 int add_exception ;
 int clear_exceptions ;
 int default_replay_logevent (struct lev_generic*,int) ;
 int del_exception ;
 int exit (int) ;
 int fprintf (int ,char*,int,int ) ;
 int get_memory_used () ;
 scalar_t__ index_mode ;
 int lev_mf ;
 int log_cur_pos () ;
 int max_memory ;
 int mf_le_start (struct lev_start*) ;
 int newindexname ;
 int save_index (int ) ;
 int stderr ;

int mf_replay_logevent (struct lev_generic *E, int size) {


  if (index_mode) {
    if ((_eventsLeft && --_eventsLeft == 0) || get_memory_used() > MEMORY_CHANGES_PERCENT * max_memory) {
      save_index (newindexname);
      exit (13);
    }
  }

  int s;
  switch (E->type) {
  case 130:
    if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
    s = 24 + ((E->b + 3) & -4);
    if (size < s) { return -2; }
    return mf_le_start ((struct lev_start *) E) >= 0 ? s : -1;
  case 133:
  case 128:
  case 137:
  case 132:
  case 131:
  case 129:
    return default_replay_logevent (E, size);
  case 136:
    STANDARD_LOG_EVENT_HANDLER(lev_mf, add_exception);
  case 134:
    STANDARD_LOG_EVENT_HANDLER(lev_mf, del_exception);
  case 135:
    STANDARD_LOG_EVENT_HANDLER(lev_mf, clear_exceptions);
  }

  fprintf (stderr, "unknown log event type %08x at position %lld\n", E->type, log_cur_pos());

  return -1;
}
