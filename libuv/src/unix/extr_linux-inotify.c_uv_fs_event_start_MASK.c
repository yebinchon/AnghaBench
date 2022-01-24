#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wd; int /*<<< orphan*/  cb; int /*<<< orphan*/  path; int /*<<< orphan*/  watchers; TYPE_5__* loop; } ;
typedef  TYPE_1__ uv_fs_event_t ;
typedef  int /*<<< orphan*/  uv_fs_event_cb ;
struct watcher_list {int wd; int /*<<< orphan*/  path; int /*<<< orphan*/  watchers; scalar_t__ iterating; } ;
struct TYPE_8__ {int /*<<< orphan*/  inotify_watchers; int /*<<< orphan*/  inotify_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct watcher_list*) ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int UV__IN_ATTRIB ; 
 int UV__IN_CREATE ; 
 int UV__IN_DELETE ; 
 int UV__IN_DELETE_SELF ; 
 int UV__IN_MODIFY ; 
 int UV__IN_MOVED_FROM ; 
 int UV__IN_MOVED_TO ; 
 int UV__IN_MOVE_SELF ; 
 int /*<<< orphan*/  errno ; 
 struct watcher_list* FUNC5 (TYPE_5__*,int) ; 
 int FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (struct watcher_list*,char const*,size_t) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 struct watcher_list* FUNC12 (int) ; 
 int /*<<< orphan*/  watcher_root ; 

int FUNC13(uv_fs_event_t* handle,
                      uv_fs_event_cb cb,
                      const char* path,
                      unsigned int flags) {
  struct watcher_list* w;
  size_t len;
  int events;
  int err;
  int wd;

  if (FUNC11(handle))
    return UV_EINVAL;

  err = FUNC6(handle->loop);
  if (err)
    return err;

  events = UV__IN_ATTRIB
         | UV__IN_CREATE
         | UV__IN_MODIFY
         | UV__IN_DELETE
         | UV__IN_DELETE_SELF
         | UV__IN_MOVE_SELF
         | UV__IN_MOVED_FROM
         | UV__IN_MOVED_TO;

  wd = FUNC10(handle->loop->inotify_fd, path, events);
  if (wd == -1)
    return FUNC4(errno);

  w = FUNC5(handle->loop, wd);
  if (w)
    goto no_insert;

  len = FUNC8(path) + 1;
  w = FUNC12(sizeof(*w) + len);
  if (w == NULL)
    return UV_ENOMEM;

  w->wd = wd;
  w->path = FUNC7(w + 1, path, len);
  FUNC1(&w->watchers);
  w->iterating = 0;
  FUNC3(watcher_root, FUNC0(&handle->loop->inotify_watchers), w);

no_insert:
  FUNC9(handle);
  FUNC2(&w->watchers, &handle->watchers);
  handle->path = w->path;
  handle->cb = cb;
  handle->wd = wd;

  return 0;
}