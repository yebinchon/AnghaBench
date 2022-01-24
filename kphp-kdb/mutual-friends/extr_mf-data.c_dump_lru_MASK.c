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
struct TYPE_4__ {struct TYPE_4__* next_used; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 TYPE_1__* LRU_head ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  user_table ; 
 TYPE_1__* users ; 

void FUNC3 (char *s, int x) {
  FUNC1 (stderr, "%s", s);
  user *u = LRU_head->next_used;
  int f = 0;
  while (u != LRU_head) {
    FUNC1 (stderr, "%d ", FUNC2 (&user_table, (int)(u - users)));
    int y = FUNC2 (&user_table, (int)(u - users));
    FUNC0 (y != x);
    u = u->next_used;
    f |= x == -y;
  }
  if (x < 0) {
    FUNC0 (f);
  }
  FUNC1 (stderr, "\n");
}