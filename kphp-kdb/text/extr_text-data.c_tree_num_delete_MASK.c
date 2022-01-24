#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int x; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef  TYPE_1__ tree_num_t ;

/* Variables and functions */
 TYPE_1__* NIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static tree_num_t *FUNC4 (tree_num_t *T, int x) {
  FUNC0 (T != NIL);
  if (T->x == x) {
    tree_num_t *N = FUNC2 (T->left, T->right);
    FUNC1 (T);
    return N;
  }
  if (x < T->x) {
    T->left = FUNC4 (T->left, x);
  } else {
    T->right = FUNC4 (T->right, x);
  }
  FUNC3 (T);
  return T;
}