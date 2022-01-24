#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  disk_read_time; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 scalar_t__ BINLOG_BUFFER ; 
 scalar_t__ BINLOG_BUFFER_END ; 
 int /*<<< orphan*/  BINLOG_BUFFER_FD ; 
 scalar_t__ BINLOG_BUFFER_FPTR ; 
 long long BINLOG_BUFFER_SIZE ; 
 scalar_t__ BINLOG_BUFFER_WPTR ; 
 long long BINLOG_POSITION ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long) ; 
 scalar_t__ FUNC2 () ; 
 long long FUNC3 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,long long) ; 
 long long FUNC5 (int /*<<< orphan*/ ,scalar_t__,long long) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC6 (long long old_binlog_position) {
  FUNC0 (BINLOG_POSITION > old_binlog_position);
  FUNC0 (BINLOG_BUFFER_WPTR == BINLOG_BUFFER_FPTR);
  long long size = BINLOG_POSITION - old_binlog_position;
  if (BINLOG_POSITION - old_binlog_position > BINLOG_BUFFER_SIZE) {
    STATS->structured.disk_read_time -= FUNC2 ();
    FUNC0 (FUNC3 (BINLOG_BUFFER_FD, BINLOG_POSITION - BINLOG_BUFFER_SIZE, SEEK_SET) == BINLOG_POSITION - BINLOG_BUFFER_SIZE);
    FUNC0 (FUNC5 (BINLOG_BUFFER_FD, BINLOG_BUFFER, BINLOG_BUFFER_SIZE) == BINLOG_BUFFER_SIZE);
    STATS->structured.disk_read_time += FUNC2 ();
    if (verbosity >= 4) {
      FUNC1 (stderr, "read %lld bytes of replicating file\n", (long long)BINLOG_BUFFER_SIZE);
    }
    BINLOG_BUFFER_WPTR = BINLOG_BUFFER + BINLOG_BUFFER_SIZE;
    BINLOG_BUFFER_FPTR = BINLOG_BUFFER_WPTR;
  } else {
    if (BINLOG_BUFFER_WPTR + size > BINLOG_BUFFER_END) {
      FUNC4 (BINLOG_BUFFER, BINLOG_BUFFER_WPTR - (BINLOG_BUFFER_SIZE - size), BINLOG_BUFFER_SIZE - size);
      STATS->structured.disk_read_time -= FUNC2 ();
      BINLOG_BUFFER_WPTR = BINLOG_BUFFER + (BINLOG_BUFFER_SIZE - size);
      BINLOG_BUFFER_FPTR = BINLOG_BUFFER + (BINLOG_BUFFER_SIZE - size);
      STATS->structured.disk_read_time += FUNC2 ();
    }
    FUNC0 (FUNC3 (BINLOG_BUFFER_FD, BINLOG_POSITION - size, SEEK_SET) == BINLOG_POSITION - size);
    FUNC0 (FUNC5 (BINLOG_BUFFER_FD, BINLOG_BUFFER_WPTR, size) == size);
    BINLOG_BUFFER_WPTR += size;
    BINLOG_BUFFER_FPTR += size;
    if (verbosity >= 4) {
      FUNC1 (stderr, "read %lld bytes of replicating file\n", size);
    }
  }
}