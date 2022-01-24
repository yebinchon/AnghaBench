#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int inotify_fd; int /*<<< orphan*/  inotify_read_watcher; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  uv__inotify_read ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(uv_loop_t* loop) {
  int err;

  if (loop->inotify_fd != -1)
    return 0;

  err = FUNC0();
  if (err < 0)
    return err;

  loop->inotify_fd = err;
  FUNC1(&loop->inotify_read_watcher, uv__inotify_read, loop->inotify_fd);
  FUNC2(loop, &loop->inotify_read_watcher, POLLIN);

  return 0;
}