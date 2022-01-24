#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,TYPE_1__*) ; 

void FUNC2 (transaction_t *T) {
  FUNC1 (4, "tlist_remove (%p)\n", T);
  transaction_t *u = T->prev, *v = T->next;
  if (u == NULL && v == NULL) {
    return;
  }
  FUNC0 (u != NULL && v != NULL);
  u->next = v;
  v->prev = u;
  T->prev = T->next = NULL;
}