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
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_fd ; 
 int /*<<< orphan*/  binlogname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ log_endw ; 
 scalar_t__ log_pos ; 
 scalar_t__ log_rptr ; 
 scalar_t__ log_start ; 
 scalar_t__ log_wptr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int now ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC4 (void) {
  int w, s;
  if (!binlogname || log_rptr == log_wptr) {
    return;
  }
  if (verbosity > 0) {
    FUNC1 (stderr, "%d flush_binlog()\n", now);
  }
  if (log_endw) {
    FUNC0 (log_wptr < log_rptr && log_rptr <= log_endw); 
    s = log_endw - log_rptr;
    if (s > 0) {
      FUNC0 (FUNC2 (binlog_fd,log_pos, SEEK_SET) == log_pos);
      w = FUNC3 (binlog_fd, log_rptr, s);
      if (w < 0) {
	FUNC1 (stderr, "error writing %d bytes at %lld to %d: %m\n", s, (long long) log_pos, binlogname);
	return;
      }
      log_rptr += w;
      log_pos += w;
      if (w < s) {
	return;
      }
    }
    log_rptr = log_start;
    log_endw = 0;
  }
  FUNC0 (log_rptr <= log_wptr);
  s = log_wptr - log_rptr;
  if (s > 0) {
    FUNC0 (FUNC2 (binlog_fd, log_pos, SEEK_SET) == log_pos);
    w = FUNC3 (binlog_fd, log_rptr, s);
    if (w < 0) {
      FUNC1 (stderr, "error writing %d bytes at %lld to %d: %m\n", s, (long long) log_pos, binlogname);
      return;
    }
    log_rptr += w;
    log_pos += w;
  }
}