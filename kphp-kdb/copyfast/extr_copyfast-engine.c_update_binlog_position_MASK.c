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
struct stat {long long st_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_binlog_update; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINLOG_BUFFER_FD ; 
 long long BINLOG_POSITION ; 
 int /*<<< orphan*/  LOG_BINLOG_UPDATED ; 
 long long MAX_BINLOG_SIZE ; 
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (long long) ; 
 int /*<<< orphan*/  FUNC6 (long long) ; 

void FUNC7 (void) {
  struct stat t;
  FUNC1 (BINLOG_BUFFER_FD, &t);
  long long old_binlog_position = BINLOG_POSITION;
  BINLOG_POSITION = t.st_size;
  FUNC0 (BINLOG_POSITION < MAX_BINLOG_SIZE);
  if (BINLOG_POSITION != old_binlog_position) {
    FUNC3 (1, LOG_BINLOG_UPDATED, BINLOG_POSITION);
    FUNC6 (old_binlog_position);
    FUNC5 (old_binlog_position);
    STATS->structured.last_binlog_update = FUNC2 ();
    FUNC4 ();
  }
}