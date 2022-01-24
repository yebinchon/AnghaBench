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
struct TYPE_9__ {int y; int x; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef  TYPE_1__ tree_ext_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__**,TYPE_1__*,int) ; 

__attribute__((used)) static tree_ext_t *FUNC3 (tree_ext_t *T, int x, int y, int rpos) {
  tree_ext_t *P;
  if (T->y > y) {
    if (x < T->x) {
      T->left = FUNC3 (T->left, x, y, rpos);
    } else {
      T->right = FUNC3 (T->right, x, y, rpos);
    }
    FUNC1 (T);
    return T;
  }
  P = FUNC0 (x, y, rpos);
  FUNC2 (&P->left, &P->right, T, x);
  FUNC1 (P);
  return P;
}