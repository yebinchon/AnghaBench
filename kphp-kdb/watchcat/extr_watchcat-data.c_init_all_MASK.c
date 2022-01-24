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
struct TYPE_3__ {struct TYPE_3__* prev_time; struct TYPE_3__* next_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TIME_TABLE_SIZE ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h_watchcat ; 
 int /*<<< orphan*/  h_watchcat_q ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ keys_cnt ; 
 scalar_t__ keys_memory ; 
 int /*<<< orphan*/  last_del_time ; 
 TYPE_1__** time_st ; 

void FUNC4 (void) {
  FUNC3 (&h_watchcat);
  FUNC3 (&h_watchcat_q);

  int i;
  for (i = 0; i < TIME_TABLE_SIZE; i++) {
    time_st[i] = FUNC1();
    time_st[i]->next_time = time_st[i]->prev_time = time_st[i];
  }
  keys_cnt = 0;
  keys_memory = 0;

  last_del_time = FUNC0 (FUNC2 (CLOCK_MONOTONIC));
}