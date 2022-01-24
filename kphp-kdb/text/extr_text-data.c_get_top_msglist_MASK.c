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
struct TYPE_8__ {TYPE_2__* topmsg_tree; scalar_t__ delayed_tree; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_9__ {int N; } ;
typedef  TYPE_2__ tree_num_t ;
struct file_user_list_entry {int dummy; } ;

/* Variables and functions */
 int MAX_RES ; 
 TYPE_2__* NIL_N ; 
 int R ; 
 int R_cnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct file_user_list_entry* FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (TYPE_2__*,int,int,int) ; 
 int FUNC8 (TYPE_2__*,int,int,int) ; 
 int verbosity ; 

int FUNC9 (int user_id, int from, int to) {
  user_t *U;
  tree_num_t *T;
  struct file_user_list_entry *D;
  int S;

  if (verbosity > 1) {
    FUNC2 (stderr, "get_top_peers_list(%d,%d,%d)\n", user_id, from, to);
  }

  if (FUNC1 (user_id) < 0) {
    return -1;
  }

  U = FUNC3 (user_id);
  R_cnt = 0;

  if (U) {
    D = U->dir_entry;
    if (U->delayed_tree || D) {
      /* need to load user metafile to perform delayed operations */
      if (!FUNC5 (user_id)) {
        return -2;
      }
    }
  } else {
    D = FUNC6 (user_id);
    if (D) {
      U = FUNC4 (user_id);
      if (!FUNC5 (user_id)) {
        return -2;
      }
    }
  }


  if (!U || U->topmsg_tree == NIL_N) {
    return 0;
  }

  T = U->topmsg_tree;

  S = T->N;
  FUNC0 (S >= 0);
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
    R_cnt = FUNC7 (T, R, from + 1, from + to) - R;
  } else {
    to = from - to + 1;
    if ((unsigned) to > MAX_RES / 2) {
      to = MAX_RES / 2;
    }
    R_cnt = FUNC8 (T, R, S - from, S - from + to - 1) - R;
  }

  FUNC0 (R_cnt >= 0 && R_cnt <= to * 2);

  return S;
}