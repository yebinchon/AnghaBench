#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int last_local_id; int /*<<< orphan*/  delayed_tree; int /*<<< orphan*/  msg_tree; int /*<<< orphan*/  delayed_value_tree; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_11__ {int y; int flags; int clear_mask; int set_mask; } ;
typedef  TYPE_2__ tree_t ;
struct file_user_list_entry {int user_last_local_id; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int TF_ZERO ; 
 int TF_ZERO_PRIME ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 TYPE_1__* FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 struct file_user_list_entry* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int,int) ; 
 int verbosity ; 

int FUNC13 (int user_id, int local_id, int clear_mask, int set_mask) {
  user_t *U;
  struct file_user_list_entry *D;
  tree_t *T;
  int t;

  FUNC2 (local_id > 0);

  U = FUNC4 (user_id);

  if (!U) {
    D = FUNC7 (user_id);
    if (!D) {
      return 0;
    }
    if (local_id > D->user_last_local_id) {
      return 0;
    }
    U = FUNC5 (user_id);
  } else {
    D = U->dir_entry;
    if (local_id > U->last_local_id) {
      return 0;
    }
  }

  if (clear_mask < 0) {
    FUNC12 (U, local_id, 0, 0);

    U->delayed_value_tree = FUNC9 (U->delayed_value_tree, local_id);
  } else if ((clear_mask | set_mask) == 0xffff) {
    FUNC12 (U, local_id, set_mask, 1);
  } else {
    if (clear_mask) {
      FUNC12 (U, local_id, clear_mask, 3);
    }
    if (set_mask) {
      FUNC12 (U, local_id, set_mask, 2);
    }
  }

  T = FUNC11 (U->msg_tree, local_id);

  if (T || !D || local_id > D->user_last_local_id || FUNC6 (U)) {
    if (T && ((T->y & 7) == TF_ZERO || (T->y & 7) == TF_ZERO_PRIME) && !FUNC6 (U)) {
      if (verbosity > 1) {
        FUNC3 (stderr, "warning: interesting situation for message %d:%d : have ZERO node (type=%d) in memory, no metafile loaded; creating delayed flags operation node.\n", user_id, local_id, T->y & 7);
      }
    } else {
      return FUNC1 (U, T, local_id, clear_mask, set_mask);
    }
  }

  if (!clear_mask && !set_mask) {
    return 2;
  }

  T = FUNC11 (U->delayed_tree, local_id);
  if (!T) {
    t = (clear_mask < 0 ? -1 : FUNC0 (clear_mask, set_mask));
    U->delayed_tree = FUNC10 (U->delayed_tree, local_id, FUNC8 (), (void *) (long) t);
//    if (U->max_delayed_local_id < local_id) {
//      U->max_delayed_local_id = local_id;
//    }
    return 3;
  }

  if (T->flags == -1) {
    return 0;
  }

  if (clear_mask < 0) {
    T->flags = -1;
    return 3;
  }

  t = FUNC0 ((T->clear_mask | clear_mask) & ~set_mask, (T->set_mask | set_mask) & ~clear_mask);

  if (T->flags == t) {
    return 2;
  }

  T->flags = t;
  return 3;
}