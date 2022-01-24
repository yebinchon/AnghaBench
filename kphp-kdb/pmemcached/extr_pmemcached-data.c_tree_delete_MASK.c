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
struct TYPE_9__ {struct TYPE_9__* right; struct TYPE_9__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static tree_t *FUNC4 (tree_t *T, hash_entry_t *x) {
  int c;
  FUNC0 (T);
  if (!(c = FUNC2 (x, T->x))) {
    tree_t *N = FUNC3 (T->left, T->right);
    FUNC1 (T);
    return N;
  }
  if (c < 0) {
    T->left = FUNC4 (T->left, x);
  } else {
    T->right = FUNC4 (T->right, x);
  }
  return T;
}