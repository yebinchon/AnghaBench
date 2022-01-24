#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* right; int /*<<< orphan*/  x; struct TYPE_9__* left; } ;
typedef  TYPE_1__ tree_ext_small_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_10__ {int N; } ;
typedef  TYPE_2__ listree_t ;

/* Variables and functions */
 int /*<<< orphan*/  LA ; 
 TYPE_1__* NIL ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TF_MINUS ; 
 scalar_t__ TF_PLUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (tree_ext_small_t *T, listree_t *LT, int a, int b, object_id_t upper_bound) {
  if (T == NIL) {
    FUNC4 (LT, a, b, upper_bound);
    return;
  }

  int N = LT->N; 
  int c = N - FUNC0(T);		// # of array elements < T->x, i.e. A[0]...A[c-1]
  int lr = c - 1;			// left subtree corresponds to [a .. c-1]
  int rl = c + (FUNC1(T) != TF_PLUS);	// right subtree corresponds to [rl .. b]

  FUNC3 (rl <= b + 1);

  if (FUNC5 (FUNC2 (LA, 0), T->x)) {
    FUNC7 (T->left, LT, a, lr, T->x);
  }

  if (FUNC1(T) != TF_MINUS) {
    FUNC6 (T->x);
  }

  if (FUNC5 (FUNC2 (LA, 0), upper_bound)) {
    FUNC7 (T->right, LT, rl, b, upper_bound);
  }
}