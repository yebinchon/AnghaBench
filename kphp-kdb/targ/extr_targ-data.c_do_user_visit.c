
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_visited; } ;
typedef TYPE_1__ user_t ;
struct lev_online_lite {int dummy; } ;


 int LEV_TARG_ONLINE_LITE ;
 int MAX_ONLINE_DELAY ;
 struct lev_online_lite* alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int,...) ;
 TYPE_1__* get_user (int) ;
 int now ;
 int process_user_online_lite (struct lev_online_lite*) ;
 int stderr ;
 int verbosity ;

int do_user_visit (int user_id, const char *addr, int len) {
  user_t *U = get_user (user_id);

  if (!U) {
    if (verbosity > 0) {
      fprintf (stderr, "error: unknown user %d, visit neglected\n", user_id);
    }
    return 0;
  }

  if (verbosity > 1) {
    fprintf (stderr, "setting last_visited for user %d to %d\n", user_id, now);
  }

  if (now - U->last_visited >= MAX_ONLINE_DELAY) {
    struct lev_online_lite *E = alloc_log_event (LEV_TARG_ONLINE_LITE, 8, user_id);
    process_user_online_lite (E);
  }

  return 1;
}
