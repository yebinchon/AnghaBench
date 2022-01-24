#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; int len; TYPE_1__* v; } ;
typedef  TYPE_2__ dl_perm_list ;
struct TYPE_4__ {int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2 (dl_perm_list *p, int n) {
  if (n > 0) {
    int a = p->n,
        b = p->n += n;
    p->len += n;
    FUNC0 (p->v->l, FUNC1 (a, b));
  }
}