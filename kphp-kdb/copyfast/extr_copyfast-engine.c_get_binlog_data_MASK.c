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
 long long BINLOG_BUFFER ; 
 int /*<<< orphan*/  BINLOG_BUFFER_FD ; 
 long long BINLOG_BUFFER_WPTR ; 
 long long BINLOG_POSITION ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 () ; 
 long long FUNC3 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,long long,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (char *data, long long pos, int len) {
  FUNC0 (len > 0);
  FUNC0 (pos + len <= BINLOG_POSITION);
  if (verbosity >= 4) {
    FUNC1 (stderr, "get_binlog_data: pos = %lld, len = %d\n", pos, len);
  }
  if (BINLOG_POSITION - pos + BINLOG_BUFFER <= BINLOG_BUFFER_WPTR) {
    if (verbosity >= 4) {
      FUNC1 (stderr, "copying from buffer\n");
    }
    FUNC4 (data, BINLOG_BUFFER_WPTR - (BINLOG_POSITION - pos), len);
  } else {
    if (verbosity >= 4) {
      FUNC1 (stderr, "reading from file\n");
    }

    STATS->structured.disk_read_time -= FUNC2 ();
    FUNC0 (FUNC3 (BINLOG_BUFFER_FD, pos, SEEK_SET) == pos);
    FUNC0 (FUNC5 (BINLOG_BUFFER_FD, data, len) == len);
    STATS->structured.disk_read_time += FUNC2 ();
  }
  if (verbosity >= 4) {
    FUNC1 (stderr, "copied data successfully\n");
  }
  return 0;
}