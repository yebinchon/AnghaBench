#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dl_prm_ptr ;
struct TYPE_8__ {int n; int len; int /*<<< orphan*/  rv; int /*<<< orphan*/  v; } ;
typedef  TYPE_2__ dl_perm ;
struct TYPE_7__ {int a; int b; int len; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5 (dl_perm *p, int n) {
  if (FUNC4 (n <= 0)) {
    return;
  }
  dl_prm_ptr v = FUNC0();
  v->a = p->n;
  p->n += n;
  p->len += n;
  v->b = p->n;
  v->len = v->b - v->a;
  v->y = FUNC3();
  FUNC2 (&p->rv, v);
  FUNC1 (&p->v, p->v, v, &p->rv);
}