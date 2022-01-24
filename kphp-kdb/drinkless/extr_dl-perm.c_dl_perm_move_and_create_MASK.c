#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dl_prm_ptr ;
struct TYPE_19__ {int n; int len; TYPE_1__* v; int /*<<< orphan*/  rv; } ;
typedef  TYPE_2__ dl_perm ;
struct TYPE_18__ {int a; int b; int len; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__**,TYPE_1__**,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__**,TYPE_1__**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9 (dl_perm *pp, int id, int i) {
  if (!(0 <= id && id < pp->n)) {
    return -1;
  }
  if (!(0 <= i && i <= pp->len)) {
    return -1;
  }
  //TODO: replace "assert" with "return -1"
  FUNC1 (FUNC3 (pp, id) == -1);

  //dbg ("dl_perm_move_and_create (id = %d) (i = %d) (len = %d)\n", id, i, pp->len);
  //dl_perm_dbg (pp);

  dl_prm_ptr p[10] = {NULL};
  if (i == pp->len) {
    p[0] = pp->v;
  } else {
    FUNC4 (pp->v, &p[0], &p[4], &p[1], i);
    i -= FUNC0 (p[0]);
    FUNC7 (p[1], &p[1], &p[3], i, &pp->rv);
  }

  dl_prm_ptr v = FUNC2();
  v->a = id;
  v->b = id + 1;
  v->len = v->b - v->a;
  v->y = FUNC8();
  FUNC6 (&pp->rv, v);

  p[2] = v;

  int s;
  for (s = 0; s < 4; s++) {
    FUNC5 (&p[s + 1], p[s], p[s + 1], &pp->rv);
  }

  pp->v = p[4];
  pp->len++;

  return 0;
}