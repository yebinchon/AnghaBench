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
struct TYPE_8__ {int /*<<< orphan*/  size; TYPE_2__* root; } ;
typedef  TYPE_1__ wkey_set ;
typedef  TYPE_2__* wkey_ptr ;
struct TYPE_9__ {int x; struct TYPE_9__* l; struct TYPE_9__* r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__*,TYPE_2__*) ; 

void FUNC3 (wkey_set *tr, int x) {
  wkey_ptr *v = &tr->root;

  while (*v != NULL) {
    if ((*v)->x  == x) {
      wkey_ptr t = *v;
      FUNC2 (v, t->l, t->r);

      FUNC1 (t);
      tr->size--;

      return;
    } else if ((*v)->x > x) {
      v = &(*v)->r;
    } else if ((*v)->x < x) {
      v = &(*v)->l;
    }
  }
  FUNC0 (0);
}