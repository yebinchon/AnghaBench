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
struct lev_generic {scalar_t__ a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  log_cutoff_pos ; 
 scalar_t__ log_first_ts ; 
 scalar_t__ log_last_ts ; 
 scalar_t__ log_read_until ; 
 int log_scan_mode ; 
 scalar_t__ log_set_now ; 
 scalar_t__ log_time_cutoff ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void FUNC2 (struct lev_generic *E) {
  if (!log_first_ts) {
    log_first_ts = E->a;
  }
  if (log_read_until > E->a) {
    FUNC0 (stderr, "time goes back from %ld to %ld in log file\n", log_read_until, E->a);
  }
  log_last_ts = log_read_until = E->a;
  if (log_set_now) {
    now = log_read_until;
  }
  if (E->a >= log_time_cutoff && !log_scan_mode) {
    log_cutoff_pos = FUNC1 ();
    log_scan_mode = 1;
    if (verbosity) {
      FUNC0 (stderr, "reached timestamp %ld above cutoff %ld at binlog position %d, entering scan mode 1\n",
        E->a, log_time_cutoff, log_cutoff_pos);
    }
  }
}