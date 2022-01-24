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
struct TYPE_2__ {long long log_start_pos; } ;

/* Variables and functions */
 TYPE_1__ R ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  binlog_fd ; 
 int /*<<< orphan*/  binlog_zipped ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int disable_crc32 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long,int /*<<< orphan*/ ) ; 
 unsigned int log_crc32_complement ; 
 long long log_crc32_pos ; 
 int log_first_ts ; 
 long long log_headers_size ; 
 int log_last_ts ; 
 long long log_pos ; 
 int log_read_until ; 
 long long log_start_pos ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (long long new_log_pos, int log_timestamp, unsigned log_crc32) {
  long long log_file_pos = new_log_pos - log_start_pos + log_headers_size;
  if (log_file_pos < 0 || (!binlog_zipped && FUNC3 (binlog_fd, log_file_pos, SEEK_SET) < 0)) {
    FUNC2 (stderr, "cannot seek file position %lld in binlog file %d: %m\n", new_log_pos, binlog_fd);
    FUNC1 (1);
  }
  FUNC0 ();
  log_first_ts = log_read_until = log_last_ts = log_timestamp;
  log_pos = new_log_pos;
  R.log_start_pos = log_pos;
  if (log_crc32 || !new_log_pos) {
    log_crc32_pos = new_log_pos;
    log_crc32_complement = ~log_crc32;
  } else {
    disable_crc32 = 7;
  }
}