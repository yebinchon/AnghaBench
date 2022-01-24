#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ size; } ;
struct TYPE_7__ {TYPE_3__ s; } ;
typedef  TYPE_1__ subscribers ;
struct TYPE_8__ {int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ pli ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  treap_cnt_rev ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int FUNC3 (ll id, pli *a, int n) {
  subscribers *s = FUNC1 (id, 0);
  if (s != NULL) {
    treap_cnt_rev += s->s.size;

    int i;
    for (i = 0; i < n; i++) {
      FUNC2 (&s->s, a[i].x);
      //dbg ("del subscriber(lazy) %lld->%lld\n", a[i].x, id);
    }
    treap_cnt_rev -= s->s.size;

    if (s->s.size == 0) {
      FUNC0 (s);
    }
  }

  return 1;
}