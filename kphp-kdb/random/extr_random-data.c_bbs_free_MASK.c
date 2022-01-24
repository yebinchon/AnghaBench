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
struct TYPE_4__ {int /*<<< orphan*/  tmp; int /*<<< orphan*/  ctx; int /*<<< orphan*/  x; int /*<<< orphan*/  r; int /*<<< orphan*/  m; } ;
typedef  TYPE_1__ bbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5 (bbs_t *self) {
  FUNC2 (self->m);
  FUNC1 (self->r);
  FUNC2 (self->x);
  FUNC0 (self->ctx);
  FUNC3 (self->tmp);
  FUNC4 (self, 0, sizeof (*self));
}