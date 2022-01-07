
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int user_id; int cat_mask; scalar_t__ fr_cnt; scalar_t__ fr_last_date; int fr_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_7__ {int cat; } ;
typedef TYPE_2__ tree_t ;


 scalar_t__ MAX_FRIENDS ;
 int delete_friend_request (TYPE_1__*,int) ;
 int fprintf (int ,char*,int,int) ;
 int lrand48 () ;
 scalar_t__ now ;
 int rev_friends ;
 int rev_friends_insert (int ,int,int,int ,int ) ;
 scalar_t__ reverse_friends_mode ;
 int stderr ;
 int tree_insert (int ,int,int ,int,scalar_t__) ;
 TYPE_2__* tree_lookup (int ,int) ;
 int verbosity ;

__attribute__((used)) static int add_friend (user_t *U, int friend_id, int cat) {
  tree_t *P;
  if (!U || friend_id <= 0) {
    return -1;
  }
  if (verbosity >= 4) {
    fprintf (stderr, "add_friend. user_id = %d, friend_id = %d\n", U->user_id, friend_id);
  }
  P = tree_lookup (U->fr_tree, friend_id);
  if (P) {
    P->cat = cat | 1;
    U->cat_mask |= P->cat;
    return P->cat;
  } else {

    if (U->fr_cnt >= MAX_FRIENDS) {
      return -1;
    }

    delete_friend_request (U, friend_id);

    if (now > U->fr_last_date) {
      U->fr_last_date = now;
    } else {
      U->fr_last_date++;
    }

    U->fr_tree = tree_insert (U->fr_tree, friend_id, lrand48(), cat | 1, U->fr_last_date);
    U->fr_cnt++;

    if (reverse_friends_mode) {
      rev_friends = rev_friends_insert (rev_friends, friend_id, U->user_id, lrand48(), 0);
    }

    return cat | 1;
  }
}
