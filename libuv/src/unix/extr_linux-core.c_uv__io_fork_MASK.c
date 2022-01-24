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
struct TYPE_6__ {int backend_fd; void* inotify_watchers; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(uv_loop_t* loop) {
  int err;
  void* old_watchers;

  old_watchers = loop->inotify_watchers;

  FUNC0(loop->backend_fd);
  loop->backend_fd = -1;
  FUNC2(loop);

  err = FUNC3(loop);
  if (err)
    return err;

  return FUNC1(loop, old_watchers);
}