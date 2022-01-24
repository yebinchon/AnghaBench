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
typedef  int /*<<< orphan*/  user_t ;
struct TYPE_4__ {struct TYPE_4__* right; int /*<<< orphan*/  value; int /*<<< orphan*/  x; struct TYPE_4__* left; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3 (user_t *U, tree_t *T) {
  if (!T) {
    return;
  }

  FUNC3 (U, T->left);

  FUNC1 (FUNC0 (U, T->x, T->value) >= 0);

  FUNC3 (U, T->right);

  FUNC2 (T, sizeof (tree_t));
}