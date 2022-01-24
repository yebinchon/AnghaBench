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
struct TYPE_4__ {int real_n; int /*<<< orphan*/  new_v; } ;
typedef  TYPE_1__ lookup ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2 (lookup *l, int x, int y) {
  //dbg ("SET %d->%d\n", x, y);
#ifdef LOOKUP_CNT
  int old_val = lookup_conv (l, x, 0);
  l->real_n += (y != 0) - (old_val != 0);
#endif

  *FUNC1 (&l->new_v, x) = y;
}