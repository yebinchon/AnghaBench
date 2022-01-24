#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ delayed_tree; int /*<<< orphan*/ * Sublists; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_1__ user_t ;
struct file_user_list_entry {int* user_sublists_size; } ;
typedef  int /*<<< orphan*/  listree_t ;
struct TYPE_6__ {int and_mask; int xor_mask; } ;

/* Variables and functions */
 TYPE_4__* Sublists ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int idx_sublists_offset ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct file_user_list_entry* FUNC5 (int) ; 
 int sublists_num ; 

int FUNC6 (int user_id, int and_mask, int xor_mask, listree_t **X, int from, int to) {
  user_t *U;
  struct file_user_list_entry *D;
  int S;
  int k;

  //fprintf (stderr, "get_msg_sublist_ext(%d,%d,%d:%d,%d,%d)\n", user_id, mode, and_mask, xor_mask, from, to);

  if (FUNC1 (user_id) < 0 || !and_mask) {
    return -1;
  }

  for (k = 0; k < sublists_num; k++) {
    if (Sublists[k].and_mask == and_mask && Sublists[k].xor_mask == xor_mask) {
      break;
    }
  }

  if (k == sublists_num) {
    return -3;
  }

  U = FUNC2 (user_id);
  *X = 0;
  S = 0;

  if (U) {
    D = U->dir_entry;
    *X = U->Sublists + k;
    if (U->delayed_tree) {
      /* need to load user metafile to perform delayed operations */
      if (!FUNC4 (user_id)) {
        return -2;
      }
    }
  } else {
    D = FUNC5 (user_id);
  }

  if (!*X && !D) {
    return 0;
  }

  if (!*X) {
    S = (D ? D->user_sublists_size[idx_sublists_offset+k] : 0);
    if (!from || !to || !S) {
      return S;
    }
    if ((from < -S || from > S) && (to < -S || to > S)) {
      return S;
    }
    /* need to load metafile here */
    if (!FUNC4 (user_id)) {
      return -2;
    }

    U = FUNC2 (user_id);
    FUNC0 (U && FUNC3 (U));
    *X = U->Sublists + k;
  }

  FUNC0 (!U || !U->delayed_tree);
  return -4;
}