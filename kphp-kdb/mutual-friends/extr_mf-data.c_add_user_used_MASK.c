#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next_used; struct TYPE_6__* prev_used; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 TYPE_1__* LRU_head ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  user_table ; 
 TYPE_1__* users ; 
 int verbosity ; 

void FUNC5 (user *u) {
  if (verbosity > 3) {
    char tmp[100];
    FUNC3 (tmp, "?(+%d)", FUNC2 (&user_table, (int)(u - users)));
    FUNC1 (tmp, FUNC2 (&user_table, (int)(u - users)));
  }

  FUNC0 (u != NULL);
  FUNC0 (FUNC4 (u));

  FUNC0 (u->prev_used == NULL);
  FUNC0 (u->next_used == NULL);

  user *y = LRU_head->prev_used;

  u->next_used = LRU_head;
  LRU_head->prev_used = u;

  u->prev_used = y;
  y->next_used = u;
  if (verbosity > 3) {
    FUNC1 ("!", 0);
  }
}