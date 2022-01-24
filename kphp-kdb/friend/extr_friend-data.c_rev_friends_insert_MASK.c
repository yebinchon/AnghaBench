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
struct TYPE_8__ {int date; int x1; int x2; int y; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef  TYPE_1__ rev_friends_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__**,TYPE_1__*,int,int) ; 

__attribute__((used)) static rev_friends_t *FUNC3 (rev_friends_t *T, int x1, int x2, int y, int date) {
  rev_friends_t *P;
  if (!T) { 
    P = FUNC1 (x1, x2, y);
    P->date = date;
    return P;
  }
  FUNC0 (x1 != T->x1 || x2 != T->x2);
  if (T->y >= y) {
    if (x1 < T->x1 || (x1 == T->x1 && x2 < T->x2)) {
      T->left = FUNC3 (T->left, x1, x2, y, date);
    } else {
      T->right = FUNC3 (T->right, x1, x2, y, date);
    }
    return T;
  }
  P = FUNC1 (x1, x2, y);
  P->date = date;
  FUNC2 (&P->left, &P->right, T, x1, x2);
  return P;
}