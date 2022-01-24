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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8 (data *d, int a, int b) {
  restore_list **b_list_ptr = (restore_list **)FUNC3 (&d->restore_info, b);
  if (b_list_ptr != NULL) {
    restore_list *b_list = *b_list_ptr;
    FUNC0 (!FUNC6 (b_list));

    restore_list **a_list_ptr = (restore_list **)FUNC1 (&d->restore_info, a);
    if (*a_list_ptr == NULL) {
      *a_list_ptr = FUNC4(a);
    }
    restore_list *a_list = *a_list_ptr;

    b_list = FUNC7 (b_list);
    FUNC5 (a_list, b_list);
    //restore_list_check (a_list);
    FUNC2 (&d->restore_info, b);
  }
}