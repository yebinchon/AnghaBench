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
struct TYPE_9__ {struct TYPE_9__* right; struct TYPE_9__* left; scalar_t__ x; } ;
typedef  TYPE_1__ tree_t ;
struct wildcard_entry {int dummy; } ;
typedef  int /*<<< orphan*/  hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct wildcard_entry*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static tree_t *FUNC5 (tree_t *T, hash_entry_t *x) {
  int c;
  FUNC0 (T);
  if (!(c = FUNC3 (x, T->x))) {
    tree_t *N = FUNC4 (T->left, T->right);
    FUNC2 ((struct wildcard_entry *)T->x);
    FUNC1 (T);
    return N;
  }
  if (c < 0) {
    T->left = FUNC5 (T->left, x);
  } else {
    T->right = FUNC5 (T->right, x);
  }
  return T;
}