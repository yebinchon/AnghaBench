#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int aio_fildes; } ;
struct TYPE_6__ {int /*<<< orphan*/  abs_filename; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int FUNC0 (TYPE_3__*) ; 
 TYPE_3__ aio_fsync_cbp ; 
 int FUNC1 (TYPE_3__*) ; 
 TYPE_1__* last_fsync_binlog_file ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 (void) {
  if (aio_fsync_cbp.aio_fildes < 0) {
    return 0;
  }
  int err = FUNC0 (&aio_fsync_cbp);
  if (err == EINPROGRESS) {
    return 1;
  }
  int res = FUNC1 (&aio_fsync_cbp);
  if (res < 0) {
    FUNC4 (0, "aio_fsync (%s) fails. %s\n", last_fsync_binlog_file->abs_filename, FUNC2 (res));
    FUNC3 (last_fsync_binlog_file, 0);
  } else {
    FUNC3 (last_fsync_binlog_file, 1);
  }
  aio_fsync_cbp.aio_fildes = -1;
  return 0;
}