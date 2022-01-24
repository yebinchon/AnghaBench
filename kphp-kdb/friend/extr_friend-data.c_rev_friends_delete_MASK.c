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
struct TYPE_9__ {int x1; int x2; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef  TYPE_1__ rev_friends_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static rev_friends_t *FUNC3 (rev_friends_t *T, int x1, int x2) {
  FUNC0 (T);
  if (T->x1 == x1 && T->x2 == x2) {
    rev_friends_t *N = FUNC2 (T->left, T->right);
    FUNC1 (T);
    return N;
  }
  if (x1 < T->x1 || (x1 == T->x1 && x2 < T->x2)) {
    T->left = FUNC3 (T->left, x1, x2);
  } else {
    T->right = FUNC3 (T->right, x1, x2);
  }
  return T;
}