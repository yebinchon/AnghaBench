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
typedef  TYPE_1__* trp_node_ptr ;
struct TYPE_9__ {int /*<<< orphan*/  size; TYPE_1__* root; } ;
typedef  TYPE_2__ treap ;
struct TYPE_8__ {int y; int x; struct TYPE_8__* r; struct TYPE_8__* l; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,TYPE_1__**,TYPE_1__**) ; 

void FUNC2 (treap *tr, int x, int y) {
  trp_node_ptr *v = &tr->root;

  while (*v != NULL && (*v)->y >= y) {
    if ((*v)->x > x) {
      v = &(*v)->r;
    } else {
      v = &(*v)->l;
    }
  }
  trp_node_ptr u = FUNC0();
  tr->size--;
  u->x = x;
  u->y = y;
  FUNC1 (*v, x, &u->l, &u->r);
  *v = u;
}