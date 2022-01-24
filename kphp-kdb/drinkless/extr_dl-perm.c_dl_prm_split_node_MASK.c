#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dl_prm_ptr ;
struct TYPE_9__ {int a; int b; int len; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 (dl_prm_ptr v, dl_prm_ptr *a, dl_prm_ptr *b, int x, dl_prm_ptr *rv) {
  x += v->a;
  if (x == v->a) {
    *a = NULL;
    *b = v;
  } else if (x == v->b) {
    *a = v;
    *b = NULL;
  } else if (v->a < x && x < v->b) {
    *b = FUNC1();
    (*b)->a = x;
    (*b)->b = v->b;
    (*b)->y = FUNC3();
    (*b)->len = (*b)->b - (*b)->a;

    *a = v;
    (*a)->b = x;
    (*a)->len = (*a)->b - (*a)->a;

    FUNC2 (rv, *b);
  } else {
    FUNC0 (0);
  }
}