#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fs_fd; int /*<<< orphan*/  fs_event_watcher; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(uv_loop_t* loop) {
#if defined(PORT_SOURCE_FILE)
  if (loop->fs_fd != -1) {
    /* stop the watcher before we blow away its fileno */
    uv__io_stop(loop, &loop->fs_event_watcher, POLLIN);
  }
#endif
  FUNC1(loop);
  return FUNC2(loop);
}