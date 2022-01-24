#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int b; int a; struct TYPE_7__* l; } ;
typedef  TYPE_1__ perm_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 

perm_list *FUNC2 (perm_list *v, int n) {
  while (n > 0) {
    int cn = v->b - v->a;
    if (cn <= n) {
      n -= cn;
      v = v->l;
    } else {
      perm_list *u = FUNC1 (v->b - n, v->b);
      v->b -= n;
      FUNC0 (v, u);
      return v;
    }
  }
  return v;
}