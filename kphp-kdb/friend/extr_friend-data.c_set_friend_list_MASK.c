#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int user_id; int fr_cnt; int fr_last_date; int cat_mask; TYPE_2__* fr_tree; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_12__ {int cat; int date; } ;
typedef  TYPE_2__ tree_t ;
struct TYPE_13__ {int id; int cat; } ;
typedef  TYPE_3__ id_cat_pair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  rev_friends ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reverse_friends_mode ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int) ; 
 int verbosity ; 

int FUNC6 (user_t *U, int len, const id_cat_pair_t *A, const int *B) {
  int i, m = 1;
  tree_t *T = 0;
  if (!U) { return -1; }
  if (verbosity >= 4) {
    FUNC0 (stderr, "set_friend_list. user_id = %d\n", U->user_id);
  }
  FUNC1 (U);
  if (A) {
    for (i = 1; i <= len; i++) {
      int x = A->id;
      tree_t *P = FUNC5 (T, x);
      m |= A->cat;
      if (P) {
        P->cat = A->cat | 1;
        P->date = i;
      } else {
        T = FUNC4 (T, x, FUNC2(), A->cat | 1, i);
        U->fr_cnt++;
        if (reverse_friends_mode) {
          rev_friends = FUNC3 (rev_friends, x, U->user_id, FUNC2(), 0);
        }
      }
      A++;
    }
  } else {
    for (i = 1; i <= len; i++) {
      int x = *B++;
      tree_t *P = FUNC5 (T, x);
      if (P) {
        P->date = i;
        P->cat = 1;
      } else {
        T = FUNC4 (T, x, FUNC2(), 1, i);
        U->fr_cnt++;
        if (reverse_friends_mode) {
          rev_friends = FUNC3 (rev_friends, x, U->user_id, FUNC2(), 0);
        }
      }
    }
  }

  U->fr_tree = T;
  U->fr_last_date = len;
  U->cat_mask = m;

  return U->fr_cnt;
}