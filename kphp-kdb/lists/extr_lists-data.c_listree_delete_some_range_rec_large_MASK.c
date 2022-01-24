#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_ext_small_t ;
struct TYPE_13__ {int y; scalar_t__ rpos; int /*<<< orphan*/  x; struct TYPE_13__* right; struct TYPE_13__* left; } ;
typedef  TYPE_1__ tree_ext_large_t ;
struct tree_payload {scalar_t__ text; } ;
typedef  int /*<<< orphan*/  listree_t ;
struct TYPE_14__ {int N; int /*<<< orphan*/  A; } ;
typedef  TYPE_2__ listree_direct_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ NIL ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct tree_payload* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ TF_MINUS ; 
 scalar_t__ TF_PLUS ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ empty_string ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 () ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree_ext_large_t *FUNC18 (tree_ext_large_t **R, listree_direct_t *LD, int a, int b, int last_y) {
  tree_ext_large_t *MN;
  if (FUNC6 (*R) == NIL) {
    int y;
    while (a <= b) {
      if (!FUNC10 ((listree_t *)LD, a)) {
        // current_minus_node (aka MN) is created ONLY here, when we want to delete a pure array entry
        MN = FUNC13 (FUNC4 (LD->A, a), y = FUNC12 (), FUNC1 (LD->N - a, TF_MINUS));
        if (y > last_y) {
          return MN;
        }
        *R = MN;
        FUNC15 (FUNC6 (*R));
        break;
      }
      a++;
    }
    if (FUNC6 (*R) == NIL) {
      return 0;
    }
  }

  tree_ext_large_t *T = *R;

  int N = LD->N; 
  int c = N - FUNC2(T);		// # of array elements < T->x, i.e. A[0]...A[c-1]
  int lr = c - 1;			// left subtree corresponds to [a .. c-1]
  int rl = c + (FUNC3(T) != TF_PLUS);	// right subtree corresponds to [rl .. b]

  FUNC7 (rl <= b + 1);

  MN = FUNC18 (&T->left, LD, a, lr, T->y);
  if (MN) {
    if (MN->y > last_y) {
      FUNC15 (FUNC6 (T));
      return MN;
    }
    FUNC16 ((tree_ext_small_t **) &MN->left, (tree_ext_small_t **) &MN->right, FUNC6 (T), MN->x);
    *R = T = MN;
    FUNC15 (FUNC6 (T));
    c = N - FUNC2(T);
    rl = c + 1; 
  }

  // now all listree elements up to T=*R have been processed, T and everything after haven't
  // c and rl are correct

  int delete_this = 0;

  if (FUNC3(T) != TF_MINUS && !FUNC11 (FUNC6 (T))) {
    if (FUNC3 (T) == TF_PLUS) {
      delete_this = 1;
    } else {
      struct tree_payload *P = FUNC5 (T);
      if (P->text) {
        if (P->text != empty_string) {
          FUNC17 (P->text, FUNC9 (P->text));
        }
        P->text = 0;
      }
      T->rpos |= TF_MINUS;
    }
    // T has to be relaxed afterwards, either by tree_ext_relax or by deleting
  }

  // here T itself has been processed, but its (possible) deletion has been delayed
  // we have to process the remainder to the right of T

  while (1) {
    MN = FUNC18 (&T->right, LD, rl, b, T->y); 
    if (delete_this) {
      *R = FUNC0 (FUNC14 (FUNC6 (T->left), FUNC6(T->right)));
      FUNC8 (T);
      T = *R;
      delete_this = 0;
    } else {
      FUNC15 (FUNC6 (T));
    }
    if (!MN || MN->y > last_y) {
      return MN;
    }
    FUNC16 ((tree_ext_small_t **) &MN->left, (tree_ext_small_t **) &MN->right, FUNC6 (T), MN->x);
    *R = T = MN;
    FUNC15 (FUNC6 (T));
    c = N - FUNC2(T);
    FUNC7 (c >= rl);
    rl = c + 1;
  }
}