#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ check_index_mode ; 
 int* days_log_crc32 ; 
 scalar_t__* days_log_offset ; 
 int* days_log_ts ; 
 int last_day ; 
 int log_crc32_complement ; 
 long long log_crc32_pos ; 
 scalar_t__ FUNC1 () ; 
 int log_last_ts ; 
 size_t next_check_day ; 
 size_t next_check_day_start ; 
 int next_day_start ; 
 int now ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 (int writing_binlog) {
  if (now >= next_day_start) {
    int day = now / 86400;
    int log_ts = log_last_ts;
    if (writing_binlog) {
      FUNC3 ();
    } else {
      FUNC2 (0);
    }
    int log_crc32 = ~log_crc32_complement;
    long long log_pos = log_crc32_pos;
    int i;
    for (i = last_day + 1; i <= day; i++) {
      days_log_offset [i] = log_pos;
      days_log_crc32[i] = log_crc32;
      days_log_ts[i] = log_ts;
    }
    last_day = day;
    next_day_start = (last_day + 1) * 86400;
  } else if (check_index_mode) {
    //fprintf (stderr, "%d %d\n", now, next_check_day_start);
    while (days_log_offset[next_check_day] && FUNC1 () >= days_log_offset[next_check_day]) {
      FUNC0 (FUNC1 () == days_log_offset[next_check_day]);
      FUNC2 (0);
      FUNC0 (~log_crc32_complement == days_log_crc32[next_check_day]);
      next_check_day ++;
      next_check_day_start = next_check_day * 86400;
    }
  }
}