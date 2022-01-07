
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int last_local_id; int delayed_tree; int msg_tree; int delayed_value_tree; struct file_user_list_entry* dir_entry; } ;
typedef TYPE_1__ user_t ;
struct TYPE_11__ {int y; int flags; int clear_mask; int set_mask; } ;
typedef TYPE_2__ tree_t ;
struct file_user_list_entry {int user_last_local_id; } ;


 int COMBINE_CLEAR_SET (int,int) ;
 int TF_ZERO ;
 int TF_ZERO_PRIME ;
 int adjust_message_internal (TYPE_1__*,TYPE_2__*,int,int,int) ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,int) ;
 TYPE_1__* get_user (int) ;
 TYPE_1__* get_user_f (int) ;
 scalar_t__ get_user_metafile (TYPE_1__*) ;
 struct file_user_list_entry* lookup_user_directory (int) ;
 int lrand48 () ;
 int stderr ;
 int tree_delete (int ,int) ;
 int tree_insert (int ,int,int ,void*) ;
 TYPE_2__* tree_lookup (int ,int) ;
 int update_history (TYPE_1__*,int,int,int) ;
 int verbosity ;

int adjust_message_intermediate (int user_id, int local_id, int clear_mask, int set_mask) {
  user_t *U;
  struct file_user_list_entry *D;
  tree_t *T;
  int t;

  assert (local_id > 0);

  U = get_user (user_id);

  if (!U) {
    D = lookup_user_directory (user_id);
    if (!D) {
      return 0;
    }
    if (local_id > D->user_last_local_id) {
      return 0;
    }
    U = get_user_f (user_id);
  } else {
    D = U->dir_entry;
    if (local_id > U->last_local_id) {
      return 0;
    }
  }

  if (clear_mask < 0) {
    update_history (U, local_id, 0, 0);

    U->delayed_value_tree = tree_delete (U->delayed_value_tree, local_id);
  } else if ((clear_mask | set_mask) == 0xffff) {
    update_history (U, local_id, set_mask, 1);
  } else {
    if (clear_mask) {
      update_history (U, local_id, clear_mask, 3);
    }
    if (set_mask) {
      update_history (U, local_id, set_mask, 2);
    }
  }

  T = tree_lookup (U->msg_tree, local_id);

  if (T || !D || local_id > D->user_last_local_id || get_user_metafile (U)) {
    if (T && ((T->y & 7) == TF_ZERO || (T->y & 7) == TF_ZERO_PRIME) && !get_user_metafile (U)) {
      if (verbosity > 1) {
        fprintf (stderr, "warning: interesting situation for message %d:%d : have ZERO node (type=%d) in memory, no metafile loaded; creating delayed flags operation node.\n", user_id, local_id, T->y & 7);
      }
    } else {
      return adjust_message_internal (U, T, local_id, clear_mask, set_mask);
    }
  }

  if (!clear_mask && !set_mask) {
    return 2;
  }

  T = tree_lookup (U->delayed_tree, local_id);
  if (!T) {
    t = (clear_mask < 0 ? -1 : COMBINE_CLEAR_SET (clear_mask, set_mask));
    U->delayed_tree = tree_insert (U->delayed_tree, local_id, lrand48 (), (void *) (long) t);



    return 3;
  }

  if (T->flags == -1) {
    return 0;
  }

  if (clear_mask < 0) {
    T->flags = -1;
    return 3;
  }

  t = COMBINE_CLEAR_SET ((T->clear_mask | clear_mask) & ~set_mask, (T->set_mask | set_mask) & ~clear_mask);

  if (T->flags == t) {
    return 2;
  }

  T->flags = t;
  return 3;
}
