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
struct log_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  binlog_fd ; 
 int /*<<< orphan*/  binlog_size ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int log_cutoff_pos ; 
 long log_end ; 
 scalar_t__ log_pos ; 
 scalar_t__ log_readto_pos ; 
 scalar_t__ log_rptr ; 
 scalar_t__ log_scan_mode ; 
 scalar_t__ log_start ; 
 int log_time_cutoff ; 
 scalar_t__ log_wptr ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct log_event*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

void FUNC4 (int cutoff_time) {
  int r;
  if (!binlog_size) { return; }

  log_time_cutoff = cutoff_time ? cutoff_time : 0x7fffffff;
  log_scan_mode = 0;
  log_cutoff_pos = -1;

  while (1) {
    if (log_rptr == log_wptr) {
      r = FUNC2 (binlog_fd, log_start, log_end - log_start);
      if (verbosity > 0) {
	FUNC0 (stderr, "read %d bytes from binlog %s\n", r, binlogname);
      }
      log_rptr = log_start;
      log_wptr = log_start + r;
      log_pos += r;
      if (!r) { break; }
    }
    if (log_rptr >= log_end - (1L << 16)) {
      FUNC1 (log_start, log_rptr, log_end - log_rptr);
      log_wptr -= (log_rptr - log_start);
      log_rptr = log_start;
      r = FUNC2 (binlog_fd, log_wptr, log_end - log_wptr);
      if (verbosity > 0) {
	FUNC0 (stderr, "read %d bytes from binlog %s\n", r, binlogname);
      }
      log_wptr += r;
      log_pos += r;
      if (!r) { break; }
    }
    r = log_wptr - log_rptr;
    if (r < 4) { break; }
    
    r = FUNC3 ((struct log_event *) log_rptr, r);
    if (r < 0) { break; }
    log_rptr += r;
  }
  if (log_rptr < log_wptr && verbosity) {
    r = log_wptr - log_rptr;
    log_pos -= r;
    FUNC0 (stderr, "replay binlog: %d bytes left unread at position %lld\n", r, (long long) log_pos);
  }
  log_readto_pos = log_pos;
}