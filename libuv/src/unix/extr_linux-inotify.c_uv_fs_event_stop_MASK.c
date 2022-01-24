#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int wd; int /*<<< orphan*/  loop; int /*<<< orphan*/  watchers; int /*<<< orphan*/ * path; } ;
typedef  TYPE_1__ uv_fs_event_t ;
struct watcher_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct watcher_list* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct watcher_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(uv_fs_event_t* handle) {
  struct watcher_list* w;

  if (!FUNC5(handle))
    return 0;

  w = FUNC2(handle->loop, handle->wd);
  FUNC1(w != NULL);

  handle->wd = -1;
  handle->path = NULL;
  FUNC4(handle);
  FUNC0(&handle->watchers);

  FUNC3(w, handle->loop);

  return 0;
}