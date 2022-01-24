#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ a; scalar_t__ b; } ;
typedef  TYPE_2__ perm_list ;
struct TYPE_10__ {int len; TYPE_1__* v; } ;
typedef  TYPE_3__ dl_perm_list ;
struct TYPE_8__ {TYPE_2__* r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3 (dl_perm_list *p, int i) {
  if (!(0 <= i && i < p->len)) {
    return -1;
  }

  FUNC0 (p, i, 0);
  perm_list *v = p->v->r;
  if (v->a + 1 == v->b) {
    FUNC1 (v);
    FUNC2 (v);
  } else {
    v->a++;
  }
  p->len--;
  return 0;
}