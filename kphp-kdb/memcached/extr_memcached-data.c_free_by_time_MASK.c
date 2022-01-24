#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int next_time; char* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_TIME_GAP ; 
 size_t TIME_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_1__* entry_buffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t last_del_time ; 
 int /*<<< orphan*/  stderr ; 
 int* time_st ; 
 scalar_t__ verbosity ; 

void FUNC4 (int mx) {
  int en = FUNC0 (FUNC3 (CLOCK_MONOTONIC)), st = time_st[last_del_time];

  while (en - last_del_time > MAX_TIME_GAP || last_del_time - en > TIME_TABLE_SIZE - MAX_TIME_GAP ||
         (mx-- && last_del_time != en)) {
    if (entry_buffer[st].next_time != st) {
      if (verbosity > 0) {
        FUNC2 (stderr, "del entry %d by time (key = %s) gap = %d\n", entry_buffer[st].next_time, entry_buffer[entry_buffer[st].next_time].key, en - last_del_time);
      }
      FUNC1 (entry_buffer[st].next_time);
    } else {
      if (++last_del_time == TIME_TABLE_SIZE) {
        last_del_time = 0;
      }
      st = time_st[last_del_time];
    }
  }
}