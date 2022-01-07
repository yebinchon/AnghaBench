
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int new_exceptions; } ;
typedef TYPE_1__ user ;
struct lev_mf_add_exception {int friend_id; int user_id; } ;


 int chg_add (int *,int) ;
 TYPE_1__* conv_uid (int ) ;
 int expired_aio_queries ;

int add_exception (struct lev_mf_add_exception *E) {
  user *u = conv_uid (E->user_id);

  if (u == ((void*)0)) {
    return 0;
  }

  if (1 <= E->friend_id && E->friend_id < 500000000) {
    chg_add (&u->new_exceptions, 2 * E->friend_id + 1);
  } else {

    expired_aio_queries += 100;
  }

  return 1;
}
