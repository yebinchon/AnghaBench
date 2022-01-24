#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int y; int x; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__**,TYPE_1__*,int) ; 

__attribute__((used)) static tree_t *FUNC2 (tree_t *T, int x, int y, unsigned value) {
  if (!T) {
    return FUNC0 (x, y, value);
  }
  if (T->y >= y) {
    if (x < T->x) {
      T->left = FUNC2 (T->left, x, y, value);
    } else {
      T->right = FUNC2 (T->right, x, y, value);
    }
    return T;
  }
  tree_t *P = FUNC0 (x, y, value);
  FUNC1 (&P->left, &P->right, T, x);
  return P;
}