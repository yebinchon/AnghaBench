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
struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (tree_t* v) {
  if (v == 0) {
    FUNC0 (0);
    return 1;
  }
  int r = 0;
  FUNC0 (1); r++;
  FUNC1 (v->x); r += sizeof (int);
  FUNC1 (v->y); r += sizeof (int);
  r += FUNC2 (v->left);
  r += FUNC2 (v->right);
  return r;
}