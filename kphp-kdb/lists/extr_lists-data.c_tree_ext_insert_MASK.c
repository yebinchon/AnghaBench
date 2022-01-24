#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int y; struct TYPE_9__* right; struct TYPE_9__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_small_t ;
typedef  int /*<<< orphan*/  object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree_ext_small_t *FUNC5 (tree_ext_small_t *T, object_id_t x, int y, tree_ext_small_t *N) {
  if (T->y > y) {
    if (FUNC2 (x, T->x)) {
      T->left = FUNC5 (T->left, x, y, N);
    } else {
//    assert (x > T->x);
      T->right = FUNC5 (T->right, x, y, N);
    }
    FUNC3 (T);
    return T;
  }
  FUNC0 (FUNC1 (N->x, x) && N->y == y);
  FUNC4 (&N->left, &N->right, T, x);
  FUNC3 (N);
  return N;
}