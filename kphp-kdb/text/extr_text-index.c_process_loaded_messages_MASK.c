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
struct TYPE_3__ {scalar_t__ user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__* User ; 
 TYPE_1__** UserDirectory ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cur_max_uid ; 
 int cur_min_uid ; 
 char* dyn_cur ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 double last_process_time ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 size_t processed_users ; 
 size_t tot_users ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4 (void) {
  int i;
  char *keep_dyn_cur;

  double tm = FUNC1 (CLOCK_MONOTONIC);

  for (i = cur_min_uid; i < cur_max_uid; i++) {
    if (User[i]) {
      FUNC0 (processed_users < tot_users);
      FUNC0 (UserDirectory[processed_users]->user_id == FUNC3 (i));
      keep_dyn_cur = dyn_cur;
      FUNC2 (UserDirectory[processed_users], User[i]);
      dyn_cur = keep_dyn_cur;
      processed_users++;
    }
  }

  last_process_time = FUNC1 (CLOCK_MONOTONIC) - tm;
}