#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  perm_list ;
struct TYPE_6__ {int n; int len; TYPE_1__* v; } ;
typedef  TYPE_2__ dl_perm_list ;
struct TYPE_5__ {int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5 (dl_perm_list *p, int id, int i) {
  if (!(0 <= id && id < p->n)) {
    return -1;
  }
  if (!(0 <= i && i <= p->len)) {
    return -1;
  }
  //TODO: replace "assert" with "return -1"
  FUNC0 (FUNC1 (p, id) == -1);

  perm_list *v = FUNC4 (p->v->r, i), *add;
  add = FUNC3 (id, id + 1);
  FUNC2 (v, add);

  p->len++;

  return 0;
}