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
struct TYPE_2__ {long long log_wptr; long long log_start; int log_rptr; } ;

/* Variables and functions */
 TYPE_1__ R ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long long,long long,int /*<<< orphan*/ ) ; 
 int disable_crc32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_crc32_complement ; 
 long long log_crc32_pos ; 
 int FUNC3 () ; 
 long long log_pos ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tot_crc32 ; 
 long long tot_crc32_pos ; 

void FUNC4 (int s) {
  FUNC0 (s >= 0);
  s = (s + 3) & -4;
  if (disable_crc32 & 2) {
    return;
  }
  FUNC0 (log_crc32_pos >= log_pos - (R.log_wptr - R.log_start)); // log_pos corresponds to R.log_wptr
  FUNC0 (s <= R.log_wptr - R.log_rptr);
  long long new_log_crc32_pos = FUNC3() + s;
  if (log_crc32_pos < tot_crc32_pos && new_log_crc32_pos >= tot_crc32_pos) {
    log_crc32_complement = FUNC1 (R.log_wptr - (log_pos - log_crc32_pos), tot_crc32_pos - log_crc32_pos, log_crc32_complement);
    log_crc32_pos = tot_crc32_pos;
    if (tot_crc32 != ~log_crc32_complement) {
      FUNC2 (stderr, "fatal: crc32 mismatch in binlog at position %lld: header expects %08x, actual %08x\n",
      tot_crc32_pos, tot_crc32, ~log_crc32_complement);
    }
    FUNC0 (tot_crc32 == ~log_crc32_complement);
  }
  log_crc32_complement = FUNC1 (R.log_wptr - (log_pos - log_crc32_pos), new_log_crc32_pos - log_crc32_pos, log_crc32_complement);
  log_crc32_pos = new_log_crc32_pos;
}