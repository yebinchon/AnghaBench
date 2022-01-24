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
struct TYPE_3__ {int n; int* y; int /*<<< orphan*/  x; int /*<<< orphan*/  new_v; } ;
typedef  TYPE_1__ lookup ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2 (lookup *l, int x, int none) {
  int *y = FUNC1 (&l->new_v, x);
  if (y != NULL) {
    return *y;
  }

  int res = FUNC0 (l->x, l->n, x);
  if (res != l->n) {
    return l->y[res];
  }

  return none;
}