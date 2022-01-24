#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int val; } ;
typedef  TYPE_1__ restore_list ;
struct TYPE_9__ {int /*<<< orphan*/  restore_info; } ;
typedef  TYPE_2__ data ;

/* Variables and functions */
 int _found ; 
 TYPE_1__* _found_a ; 
 TYPE_1__* _found_b ; 
 int _needed_id ; 
 int* _prev_id ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  search_for_id ; 

int FUNC5 (data *d, int needed_id, int *prev_id) {
//  dbg ("data_restore_del\n");
  _prev_id = prev_id;
  _found = -1;
  _needed_id = needed_id;
  _prev_id = prev_id;
  FUNC2 (&d->restore_info, search_for_id);

//  dbg ("_found = %d\n", _found);
  if (_found > 0) {
    if (FUNC4 (_found_a)) {
      int a = _found_a->val;
      FUNC3 (_found_a);
      FUNC1 (&d->restore_info, a);
    }

    if (FUNC4 (_found_b)) {
      FUNC3 (_found_b);
    } else {
      int  b = _found_b->val;
      *(restore_list **)FUNC0 (&d->restore_info, b) = _found_b;
    }
  }

  return _found;
}