#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int last_local_id; void* delayed_value_tree; void* msg_tree; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_9__ {int y; int flags; struct value_data* value; } ;
typedef  TYPE_2__ tree_t ;
struct value_data {int zero_mask; int fields_mask; int flags; } ;
struct file_user_list_entry {int user_last_local_id; } ;

/* Variables and functions */
#define  TF_MINUS 131 
#define  TF_REPLACED 130 
#define  TF_ZERO 129 
#define  TF_ZERO_PRIME 128 
 int FUNC0 (TYPE_1__*,int,struct value_data*) ; 
 struct value_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 struct value_data* FUNC4 (struct value_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct value_data*) ; 
 TYPE_1__* FUNC6 (int) ; 
 TYPE_1__* FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 struct file_user_list_entry* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FUNC11 (struct value_data*,struct value_data*,int,int) ; 
 int read_extra_mask ; 
 void* FUNC12 (void*,int,int /*<<< orphan*/ ,struct value_data*) ; 
 TYPE_2__* FUNC13 (void*,int) ; 
 int write_extra_mask ; 

int FUNC14 (int user_id, int local_id, struct value_data *V) {
  user_t *U;
  struct file_user_list_entry *D;
  tree_t *T, *S;
  struct value_data *W;
  int remaining_mask;

  if (FUNC3 (user_id) < 0 || local_id <= 0) {
    FUNC5 (V);
    return -1;
  }

  FUNC2 (!(V->zero_mask & ~V->fields_mask) && !(V->fields_mask & ~write_extra_mask));

  if (!(V->fields_mask & read_extra_mask)) {
    /* all changes are to fields which will be always read as zero, ignore */
    FUNC5 (V);
    return 3;
  }

  U = FUNC6 (user_id);

  if (!U) {
    D = FUNC9 (user_id);
    if (!D || local_id > D->user_last_local_id) {
      FUNC5 (V);
      return 0;
    }
    U = FUNC7 (user_id);
  } else {
    D = U->dir_entry;
    if (local_id > U->last_local_id) {
      FUNC5 (V);
      return 0;
    }
  }

  if (V->fields_mask & ~read_extra_mask) {
    V = FUNC4 (V, 0, read_extra_mask);
  }

  if (!D || local_id > D->user_last_local_id || FUNC8 (U)) {
    return FUNC0 (U, local_id, V);
  }

  T = FUNC13 (U->msg_tree, local_id);

  if (!T) {
    S = FUNC13 (U->delayed_value_tree, local_id);
    if (!S) {
      U->delayed_value_tree = FUNC12 (U->delayed_value_tree, local_id, FUNC10 (), V);
      return 3;
    }
    /* merge S->value with V into new S->value */
    S->value = FUNC11 (S->value, V, -1, 1);
    FUNC5 (V);
    return 3;
  }

  /* if T is present, S may contain only increment actions */

  switch (T->y & 7) {
  case TF_MINUS:
    FUNC5 (V);
    return 0;
  case TF_REPLACED:
    /* apply V to T->extra */
    return FUNC0 (U, local_id, V);
  case TF_ZERO:
    if (!V->zero_mask) {
      S = FUNC13 (U->delayed_value_tree, local_id);
      /* V<set> is empty, so don't need to convert ZERO into ZERO_PRIME */
      /* merge S->value with V into new S->value */
      if (!S) {
        U->delayed_value_tree = FUNC12 (U->delayed_value_tree, local_id, FUNC10 (), V);
        return 3;
      }
      S->value = FUNC11 (S->value, V, -1, 1);
      FUNC5 (V);
      return 3;
    }
    /* convert into TF_ZERO_PRIME, use V<set> as new T->value */
    /* merge V<incr> with S */
    W = FUNC1 (V->zero_mask);
    W->flags = T->flags & 0xffff;
    T->y += TF_ZERO_PRIME - TF_ZERO;
    T->value = W;
  case TF_ZERO_PRIME:
    S = FUNC13 (U->delayed_value_tree, local_id);
    /* apply V to T->value as much as possible (fields of V present in T->value + V<set>) */
    T->value = FUNC11 (T->value, V, V->zero_mask | T->value->fields_mask, 0);
    /* merge remaining part of V with S */
    remaining_mask = V->fields_mask & ~(V->zero_mask | T->value->fields_mask);
    if (remaining_mask) {
      if (!S) {
        if (remaining_mask != V->fields_mask) {
          V = FUNC4 (V, 0, remaining_mask);
        }
        U->delayed_value_tree = FUNC12 (U->delayed_value_tree, local_id, FUNC10 (), V);
        return 3;
      }
      S->value = FUNC11 (S->value, V, ~T->value->fields_mask, 1);
    }
    FUNC5 (V);
    return 3;
  }

  FUNC2 (0);
  return -1;
}