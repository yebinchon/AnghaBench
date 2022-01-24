#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ x; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 

tree_t* FUNC4 () {
  if (FUNC2 () == 0) {
    return 0;
  }
  int x = FUNC3 ();
  int y = FUNC3 ();
  tree_t *P = FUNC1 (x, y);
  P->left = FUNC4 ();
  P->right = FUNC4 ();
  if (P->left) { FUNC0 (P->left->x < P->x); }
  if (P->right) { FUNC0 (P->right->x > P->x); }
  return P;
}