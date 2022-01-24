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
typedef  int /*<<< orphan*/  change_list ;
struct TYPE_3__ {struct TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* chg_list_free ; 
 int /*<<< orphan*/  chg_list_memory ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 

void FUNC3 (int n) {
  FUNC0 (chg_list_free == NULL);
  FUNC0 (n > 0);

  chg_list_memory -= FUNC1();
  chg_list_free = FUNC2 (sizeof (change_list) * n);
  FUNC0 (chg_list_free != NULL);
  chg_list_memory += FUNC1();

  int i;
  for (i = 0; i + 1 < n; i++) {
    chg_list_free[i].next = &chg_list_free[i + 1];
  }
  chg_list_free[n - 1].next = NULL;
}