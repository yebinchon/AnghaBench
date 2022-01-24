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
struct TYPE_3__ {int /*<<< orphan*/  disk_write_time; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 scalar_t__ BINLOG_BUFFER ; 
 int /*<<< orphan*/  BINLOG_BUFFER_FD ; 
 scalar_t__ BINLOG_BUFFER_FPTR ; 
 scalar_t__ BINLOG_BUFFER_SIZE ; 
 scalar_t__ BINLOG_BUFFER_WPTR ; 
 scalar_t__ BINLOG_POSITION ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int FUNC6 (int force) {
  if (BINLOG_BUFFER_WPTR != BINLOG_BUFFER_FPTR) {
    FUNC0 (BINLOG_BUFFER_WPTR > BINLOG_BUFFER_FPTR);
    STATS->structured.disk_write_time -= FUNC2 ();
    FUNC0 (FUNC3 (BINLOG_BUFFER_FD, BINLOG_POSITION - (BINLOG_BUFFER_WPTR - BINLOG_BUFFER_FPTR), SEEK_SET) == BINLOG_POSITION - (BINLOG_BUFFER_WPTR - BINLOG_BUFFER_FPTR));
    FUNC0 (FUNC5 (BINLOG_BUFFER_FD, BINLOG_BUFFER_FPTR, BINLOG_BUFFER_WPTR - BINLOG_BUFFER_FPTR) == BINLOG_BUFFER_WPTR - BINLOG_BUFFER_FPTR);
    FUNC0 (FUNC1 (BINLOG_BUFFER_FD) >= 0);
    STATS->structured.disk_write_time += FUNC2 ();
    BINLOG_BUFFER_FPTR = BINLOG_BUFFER_WPTR;
  }
  if (BINLOG_BUFFER_WPTR > BINLOG_BUFFER + BINLOG_BUFFER_SIZE) {
    FUNC4 (BINLOG_BUFFER, BINLOG_BUFFER_WPTR - BINLOG_BUFFER_SIZE, BINLOG_BUFFER_SIZE);
    BINLOG_BUFFER_WPTR = BINLOG_BUFFER + BINLOG_BUFFER_SIZE;
    BINLOG_BUFFER_FPTR = BINLOG_BUFFER_WPTR;
  }
  return 0;
}