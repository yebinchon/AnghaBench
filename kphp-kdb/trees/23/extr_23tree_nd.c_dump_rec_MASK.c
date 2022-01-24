#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x1; int* extra; scalar_t__ x2; struct TYPE_4__* right; struct TYPE_4__* middle; struct TYPE_4__* left; } ;
typedef  TYPE_1__ tree23_t ;
struct TYPE_5__ {int* extra; } ;
typedef  TYPE_2__ tree23_leaf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void FUNC2 (tree23_t *T, int depth, int extra) {
  int i;
  if (!T) return;
  FUNC0 ("[ ");
  if (depth--) {
    FUNC2 (T->left, depth, extra);
    FUNC0 ("%d", T->x1);
    for (i = -extra; i < 0; i++) {
      FUNC0 (":%d", T->extra[i]);
    }
    FUNC1 (' ');
    if (T->x2 > T->x1) {
      FUNC2 (T->middle, depth, extra);
      FUNC0 ("%d", T->x2);
      for (i = -2*extra; i < -extra; i++) {
        FUNC0 (":%d", T->extra[i]);
      }
      FUNC1 (' ');
    }
    FUNC2 (T->right, depth, extra);
  } else {
    FUNC0 ("%d", T->x1);
    for (i = -extra; i < 0; i++) {
      FUNC0 (":%d", ((tree23_leaf_t *) T)->extra[i]);
    }
    FUNC1 (' ');
    if (T->x2 > T->x1) {
      FUNC0 ("%d", T->x2);
      for (i = -2*extra; i < -extra; i++) {
        FUNC0 (":%d", ((tree23_leaf_t *) T)->extra[i]);
      }
      FUNC1 (' ');
    }
  }
  FUNC0 ("] ");
}