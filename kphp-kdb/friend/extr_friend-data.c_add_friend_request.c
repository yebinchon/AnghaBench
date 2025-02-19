
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int req_last_date; int req_cnt; void* req_time_tree; void* req_tree; void* fr_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_7__ {int cat; int date; } ;
typedef TYPE_2__ tree_t ;


 int assert (TYPE_2__*) ;
 int lrand48 () ;
 int now ;
 void* tree_insert (void*,int,int ,int,int) ;
 TYPE_2__* tree_lookup (void*,int) ;

__attribute__((used)) static int add_friend_request (user_t *U, int friend_id, int cat, int force) {
  tree_t *P;
  if (!U || friend_id <= 0) {
    return -1;
  }
  P = tree_lookup (U->req_tree, friend_id);
  if (P) {
    if (force == 2) {
      return 0;
    }
    P->cat = cat;
    P = tree_lookup (U->req_time_tree, -P->date);
    assert (P);
    P->cat = cat;
    return P->cat;
  } else if (force) {
    if (tree_lookup (U->fr_tree, friend_id)) {
      return -1;
    }
    if (now > U->req_last_date) {
      U->req_last_date = now;
    } else {
      U->req_last_date++;
    }
    U->req_tree = tree_insert (U->req_tree, friend_id, lrand48(), cat, U->req_last_date);
    U->req_time_tree = tree_insert (U->req_time_tree, -U->req_last_date, lrand48(), cat, friend_id);
    U->req_cnt++;
    return cat;
  } else {
    return 0;
  }
}
