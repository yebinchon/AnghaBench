
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; int last_visited; scalar_t__ online_prev; scalar_t__ online_next; } ;
typedef TYPE_1__ user_t ;
typedef int olist_t ;


 int * OHead ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ is_valid_online_stamp (int) ;
 int now ;
 int online_advance_now () ;
 int online_convert_time (int) ;
 int online_increment (int,int) ;
 int online_list_add_after (int *,int ) ;
 int online_list_remove (int ) ;
 int stderr ;
 int user_to_olist (TYPE_1__*) ;
 int verbosity ;

int account_user_online (user_t *U) {
  if (!U) {
    return 0;
  }

  if (verbosity > 2) {
    fprintf (stderr, "setting last_visited for user %d to %d\n", U->user_id, now);
  }

  online_advance_now ();

  if (U->online_next) {
    online_list_remove (user_to_olist (U));
    if (verbosity > 2) {
      fprintf (stderr, "last_visited was %d, convert was %d\n", U->last_visited, online_convert_time (U->last_visited));
    }
    online_increment (online_convert_time (U->last_visited), -1);
  }

  if (is_valid_online_stamp (now)) {
    int p = online_convert_time (now);
    online_list_add_after ((olist_t *)&OHead[p], user_to_olist (U));
    if (verbosity > 2) {
      fprintf (stderr, "new convert is %d\n", p);
    }
    online_increment (p, +1);
  } else {
    U->online_next = U->online_prev = 0;
  }

  U->last_visited = now;

  return 1;
}
