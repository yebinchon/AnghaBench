#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int fd; } ;
struct TYPE_7__ {int /*<<< orphan*/ * path; TYPE_4__ event_watcher; int /*<<< orphan*/  loop; int /*<<< orphan*/ * cf_cb; } ;
typedef  TYPE_1__ uv_fs_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  uv__has_forked_with_cfrunloop ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(uv_fs_event_t* handle) {
  int r;
  r = 0;

  if (!FUNC5(handle))
    return 0;

  FUNC3(handle);

#if defined(__APPLE__) && MAC_OS_X_VERSION_MAX_ALLOWED >= 1070
  if (!uv__has_forked_with_cfrunloop && handle->cf_cb != NULL)
    r = uv__fsevents_close(handle);
#endif

  if (handle->event_watcher.fd != -1) {
    FUNC4(handle->loop, &handle->event_watcher);
    FUNC0(handle->event_watcher.fd);
    handle->event_watcher.fd = -1;
  }

  FUNC1(handle->path);
  handle->path = NULL;

  return r;
}