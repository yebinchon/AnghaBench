#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  restore_list ;
struct TYPE_3__ {int /*<<< orphan*/  restore_info; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5 (data *d, int id, int prev_id) {
//  dbg ("data_restore_add (id = %d) (prev_id = %d)\n", id, prev_id);
  restore_list **prev_id_list_ptr = (restore_list **)FUNC0 (&d->restore_info, prev_id);
  if (*prev_id_list_ptr == NULL) {
    *prev_id_list_ptr = FUNC3 (prev_id);
  }
  restore_list *prev_id_list = *prev_id_list_ptr;

  restore_list **id_list_ptr = (restore_list **) FUNC2 (&d->restore_info, id);
  restore_list *id_list;
  if (id_list_ptr == NULL) {
    id_list = FUNC3 (id);
  } else {
    id_list = *id_list_ptr;
    FUNC1 (&d->restore_info, id);
  }

  FUNC4 (prev_id_list, id_list);
}