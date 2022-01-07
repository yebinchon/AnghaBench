
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* topmsg_tree; scalar_t__ delayed_tree; struct file_user_list_entry* dir_entry; } ;
typedef TYPE_1__ user_t ;
struct TYPE_9__ {int N; } ;
typedef TYPE_2__ tree_num_t ;
struct file_user_list_entry {int dummy; } ;


 int MAX_RES ;
 TYPE_2__* NIL_N ;
 int R ;
 int R_cnt ;
 int assert (int) ;
 scalar_t__ conv_uid (int) ;
 int fprintf (int ,char*,int,int,int) ;
 TYPE_1__* get_user (int) ;
 TYPE_1__* get_user_f (int) ;
 int load_user_metafile (int) ;
 struct file_user_list_entry* lookup_user_directory (int) ;
 int stderr ;
 int tree_num_get_range (TYPE_2__*,int,int,int) ;
 int tree_num_get_range_rev (TYPE_2__*,int,int,int) ;
 int verbosity ;

int get_top_msglist (int user_id, int from, int to) {
  user_t *U;
  tree_num_t *T;
  struct file_user_list_entry *D;
  int S;

  if (verbosity > 1) {
    fprintf (stderr, "get_top_peers_list(%d,%d,%d)\n", user_id, from, to);
  }

  if (conv_uid (user_id) < 0) {
    return -1;
  }

  U = get_user (user_id);
  R_cnt = 0;

  if (U) {
    D = U->dir_entry;
    if (U->delayed_tree || D) {

      if (!load_user_metafile (user_id)) {
        return -2;
      }
    }
  } else {
    D = lookup_user_directory (user_id);
    if (D) {
      U = get_user_f (user_id);
      if (!load_user_metafile (user_id)) {
        return -2;
      }
    }
  }


  if (!U || U->topmsg_tree == NIL_N) {
    return 0;
  }

  T = U->topmsg_tree;

  S = T->N;
  assert (S >= 0);
  if (!S) {
    return 0;
  }

  if (!from || !to) {
    return S;
  }
  if (from < 0) {
    from += S;
  } else {
    from--;
  }
  if (to < 0) {
    to += S;
  } else {
    to--;
  }

  if (from <= to) {
    to = to - from + 1;
    if ((unsigned) to > MAX_RES / 2) {
      to = MAX_RES / 2;
    }
    R_cnt = tree_num_get_range (T, R, from + 1, from + to) - R;
  } else {
    to = from - to + 1;
    if ((unsigned) to > MAX_RES / 2) {
      to = MAX_RES / 2;
    }
    R_cnt = tree_num_get_range_rev (T, R, S - from, S - from + to - 1) - R;
  }

  assert (R_cnt >= 0 && R_cnt <= to * 2);

  return S;
}
