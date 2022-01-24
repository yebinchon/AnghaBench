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
struct TYPE_3__ {int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ dl_perm ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3 (dl_perm *p, int *a, int n, int offset) {
  if (offset < 0) {
    offset = 0;
  }
  FUNC1 (p->v, a, n, offset);
  return FUNC2 (FUNC0 (p->v) - offset, 0);
}