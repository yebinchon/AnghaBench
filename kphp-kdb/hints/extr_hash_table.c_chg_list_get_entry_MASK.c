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
typedef  TYPE_1__* change_list_ptr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* chg_list_free ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

change_list_ptr FUNC2 (void) {
  if (chg_list_free == NULL) {
    FUNC1 (10000);
  }

  FUNC0 (chg_list_free != NULL);

  change_list_ptr res = chg_list_free;
  chg_list_free = chg_list_free->next;
  res->next = NULL;

  return res;
}