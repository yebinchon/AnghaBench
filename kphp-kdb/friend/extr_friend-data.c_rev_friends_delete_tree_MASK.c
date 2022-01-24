#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_t ;
typedef  int /*<<< orphan*/  rev_friends_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rev_friends_t *FUNC1 (rev_friends_t *T, int x2, tree_t *A) {
  if (!A) {
    return T;
  }
  T = FUNC0 (T, A->x, x2);
  T = FUNC1 (T, x2, A->left);
  T = FUNC1 (T, x2, A->right);
  return T;
}