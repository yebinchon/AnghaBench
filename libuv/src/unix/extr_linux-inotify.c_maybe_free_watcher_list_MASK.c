#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  inotify_fd; int /*<<< orphan*/  inotify_watchers; } ;
typedef  TYPE_1__ uv_loop_t ;
struct watcher_list {int /*<<< orphan*/  wd; int /*<<< orphan*/  watchers; int /*<<< orphan*/  iterating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct watcher_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct watcher_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watcher_root ; 

__attribute__((used)) static void FUNC5(struct watcher_list* w, uv_loop_t* loop) {
  /* if the watcher_list->watchers is being iterated over, we can't free it. */
  if ((!w->iterating) && FUNC1(&w->watchers)) {
    /* No watchers left for this path. Clean up. */
    FUNC2(watcher_root, FUNC0(&loop->inotify_watchers), w);
    FUNC4(loop->inotify_fd, w->wd);
    FUNC3(w);
  }
}