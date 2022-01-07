
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int userplace_t ;
struct TYPE_8__ {int priv_mask; int user_id; int * last; int * first; } ;
typedef TYPE_1__ user_t ;
struct TYPE_9__ {int user_id; int * last; int * first; } ;
typedef TYPE_2__ recommend_user_t ;
typedef int recommend_item_t ;
struct TYPE_10__ {int user_id; int * last; int * first; } ;
typedef TYPE_3__ notify_user_t ;
typedef int item_t ;


 scalar_t__ NOTIFY_MODE ;
 int RECOMMEND_MODE ;
 scalar_t__ UG_MODE ;
 TYPE_1__** User ;
 int assert (int ) ;
 int conv_uid (int) ;
 TYPE_1__* get_user (int) ;
 int max_uid ;
 int tot_users ;
 int vkprintf (int,char*,...) ;
 TYPE_1__* zmalloc0 (int) ;

__attribute__((used)) static user_t *get_user_f (int user_id, int force) {
  vkprintf (5, "get_user_f: user_id = %d, force = %d\n", user_id, force);
  if (force == 0) {
    return get_user (user_id);
  }
  int i = conv_uid (user_id);
  vkprintf (5, "conv_id = %d\n", i);
  user_t *U;
  if (i < 0) { return 0; }
  U = User[i];
  if (U) { return U; }
  if (UG_MODE) {
    U = zmalloc0 (sizeof (user_t));
    U->priv_mask = 1;
    U->first = U->last = (item_t *) U;
    U->user_id = i;
  } else if (NOTIFY_MODE) {
    U = zmalloc0 (sizeof (notify_user_t));
    ((notify_user_t *) U)->first = ((notify_user_t *) U)->last = (userplace_t *) U;
    ((notify_user_t *) U)->user_id = i;
  } else {
    assert (RECOMMEND_MODE);
    U = zmalloc0 (sizeof (recommend_user_t));
    ((recommend_user_t *) U)->first = ((recommend_user_t *) U)->last = (recommend_item_t *) U;
    ((recommend_user_t *) U)->user_id = i;
  }
  vkprintf (5, "creating new user: U = %p, user_id = %d\n", U, user_id);
  User[i] = U;
  if (i > max_uid) { max_uid = i; }
  tot_users++;
  return U;
}
