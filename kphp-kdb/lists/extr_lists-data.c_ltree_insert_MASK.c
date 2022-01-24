#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ltree_x_t ;
struct TYPE_5__ {int y; struct TYPE_5__* right; struct TYPE_5__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ ltree_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ltree_t *FUNC2 (ltree_t *T, ltree_x_t x, int y) {
  ltree_t *Root = T, **U = &Root, **L, **R;

  while (T && T->y >= y) {
    U = FUNC0 (x, T->x) ? &T->left : &T->right;
    T = *U;
  }

  *U = FUNC1 (x, y);

  L = &(*U)->left;
  R = &(*U)->right;

  while (T) {
    if (FUNC0 (x, T->x)) {
      *R = T;
      R = &T->left;
      T = *R;
    } else {
      *L = T;
      L = &T->right;
      T = *L;
    }
  }

  *L = *R = 0;

  return Root;
}