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
struct TYPE_3__ {int /*<<< orphan*/  inotify_watchers; } ;
typedef  TYPE_1__ uv_loop_t ;
struct watcher_list {int wd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct watcher_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct watcher_list*) ; 
 int /*<<< orphan*/  watcher_root ; 

__attribute__((used)) static struct watcher_list* FUNC2(uv_loop_t* loop, int wd) {
  struct watcher_list w;
  w.wd = wd;
  return FUNC1(watcher_root, FUNC0(&loop->inotify_watchers), &w);
}