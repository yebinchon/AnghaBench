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
struct TYPE_10__ {scalar_t__ x; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef  TYPE_1__ tree_ext_global_t ;
typedef  scalar_t__ global_id_t ;

/* Variables and functions */
 TYPE_1__* DeletedSubnode_global ; 
 TYPE_1__* NILG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static tree_ext_global_t *FUNC3 (tree_ext_global_t *T, global_id_t x) {
  FUNC0 (T != NILG);
  if (T->x == x) {
    tree_ext_global_t *N = FUNC1 (T->left, T->right);
    DeletedSubnode_global = T;
    return N;
  }
  if (x < T->x) {
    T->left = FUNC3 (T->left, x);
  } else {
    T->right = FUNC3 (T->right, x);
  }
  FUNC2 (T);
  return T;
}