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
struct TYPE_5__ {scalar_t__ tot_items; TYPE_2__* last; TYPE_2__* first; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ item_t ;

/* Variables and functions */
 int UG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2 (user_t *U) {
  FUNC0 (UG_MODE);
  item_t *p = U->first, *q;
  while (p != (item_t *) U) {
    q = p->next;
    U->tot_items--;
    FUNC0 (U->tot_items >= 0);
    FUNC1 (p);
    p = q;
  }
  FUNC0 (!U->tot_items);
  U->first = U->last = (item_t *) U;
}