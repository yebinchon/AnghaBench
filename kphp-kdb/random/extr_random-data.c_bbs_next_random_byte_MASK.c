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
struct TYPE_3__ {int /*<<< orphan*/  i; int /*<<< orphan*/ * x; int /*<<< orphan*/  ctx; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ bbs_t ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6 (bbs_t *self) {
  BIGNUM *z = FUNC4 ();
  FUNC3 (z, self->x, self->x, self->r, self->ctx);
  FUNC2 (self->x, 8);
  int r = FUNC1 (self->x);
  FUNC5 (r >= 0 && r < 256);
  FUNC0 (self->x);
  self->x = z;
  ++(self->i);
  return r;
}