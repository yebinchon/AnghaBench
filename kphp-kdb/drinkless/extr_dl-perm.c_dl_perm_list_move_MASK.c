#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ a; scalar_t__ b; struct TYPE_11__* r; } ;
typedef  TYPE_2__ perm_list ;
struct TYPE_12__ {int len; TYPE_1__* v; } ;
typedef  TYPE_3__ dl_perm_list ;
struct TYPE_10__ {int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4 (dl_perm_list *p, int i, int j) {
  if (!(0 <= i && i < p->len)) {
    return -1;
  }
  if (!(0 <= j && j < p->len)) {
    return -1;
  }
  if (i == j) {
    return 0;
  }

  perm_list *v = FUNC3 (p->v->r, i)->r, *add;
  if (v->a + 1 == v->b) {
    add = v;
    FUNC2 (v);
  } else {
    add = FUNC1 (v->a, v->a + 1);
    v->a++;
  }
  v = FUNC3 (p->v->r, j);

  FUNC0 (v, add);
  return 0;
}