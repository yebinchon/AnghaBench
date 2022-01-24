#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dl_trp_node_ptr ;
struct TYPE_9__ {int /*<<< orphan*/  size; TYPE_1__* root; } ;
typedef  TYPE_2__ dl_treap ;
struct TYPE_8__ {int y; int x; struct TYPE_8__* r; struct TYPE_8__* l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,TYPE_1__**,TYPE_1__**) ; 
 TYPE_1__* FUNC1 () ; 

void FUNC2 (dl_treap *tr, int x, int y) {
  dl_trp_node_ptr *v = &tr->root;

  while (*v != NULL && ((*v)->y >= y)) {
    if (((*v)->x ^ x) <= 1) {
      (*v)->x = x;
      return;
    } else if ((*v)->x > x) {
      v = &(*v)->r;
    } else if ((*v)->x < x) {
      v = &(*v)->l;
    }
  }
  dl_trp_node_ptr vv = *v;

  while (vv != NULL) {
    if ((vv->x ^ x) <= 1) {
      vv->x = x;
      return;
    } else if (vv->x > x) {
      vv = vv->r;
    } else if (vv->x < x) {
      vv = vv->l;
    }
  }

  dl_trp_node_ptr u = FUNC1();
  tr->size--;
  u->x = x;
  u->y = y;
  FUNC0 (*v, x, &u->l, &u->r);
  *v = u;
}