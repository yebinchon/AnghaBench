#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int val; struct TYPE_11__* next; struct TYPE_11__* prev; } ;
typedef  TYPE_1__ restore_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3 (restore_list *v, int needed_id, restore_list **before_id, restore_list **after_id, int *prev_id) {
  //restore_list_check (v);
  //restore_list_dbg (v);
  restore_list *i = v->next;

  while (i != v) {
    if (i->val == needed_id) {
      *prev_id = v->val;

      if (i->next != v) {
        *after_id = FUNC1 (v->prev, i->next, needed_id);
      } else {
        *after_id = NULL;
      }
      FUNC0 (i->prev, v);
      *before_id = v;

      FUNC0 (i, i);

      FUNC2 (i);

      return 1;
    }
    i = i->next;
  }
  return 0;
}