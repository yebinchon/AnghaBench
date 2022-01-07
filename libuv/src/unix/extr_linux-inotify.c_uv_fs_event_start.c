
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wd; int cb; int path; int watchers; TYPE_5__* loop; } ;
typedef TYPE_1__ uv_fs_event_t ;
typedef int uv_fs_event_cb ;
struct watcher_list {int wd; int path; int watchers; scalar_t__ iterating; } ;
struct TYPE_8__ {int inotify_watchers; int inotify_fd; } ;


 int CAST (int *) ;
 int QUEUE_INIT (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int RB_INSERT (int ,int ,struct watcher_list*) ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int UV__IN_ATTRIB ;
 int UV__IN_CREATE ;
 int UV__IN_DELETE ;
 int UV__IN_DELETE_SELF ;
 int UV__IN_MODIFY ;
 int UV__IN_MOVED_FROM ;
 int UV__IN_MOVED_TO ;
 int UV__IN_MOVE_SELF ;
 int errno ;
 struct watcher_list* find_watcher (TYPE_5__*,int) ;
 int init_inotify (TYPE_5__*) ;
 int memcpy (struct watcher_list*,char const*,size_t) ;
 int strlen (char const*) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__inotify_add_watch (int ,char const*,int) ;
 scalar_t__ uv__is_active (TYPE_1__*) ;
 struct watcher_list* uv__malloc (int) ;
 int watcher_root ;

int uv_fs_event_start(uv_fs_event_t* handle,
                      uv_fs_event_cb cb,
                      const char* path,
                      unsigned int flags) {
  struct watcher_list* w;
  size_t len;
  int events;
  int err;
  int wd;

  if (uv__is_active(handle))
    return UV_EINVAL;

  err = init_inotify(handle->loop);
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

  wd = uv__inotify_add_watch(handle->loop->inotify_fd, path, events);
  if (wd == -1)
    return UV__ERR(errno);

  w = find_watcher(handle->loop, wd);
  if (w)
    goto no_insert;

  len = strlen(path) + 1;
  w = uv__malloc(sizeof(*w) + len);
  if (w == ((void*)0))
    return UV_ENOMEM;

  w->wd = wd;
  w->path = memcpy(w + 1, path, len);
  QUEUE_INIT(&w->watchers);
  w->iterating = 0;
  RB_INSERT(watcher_root, CAST(&handle->loop->inotify_watchers), w);

no_insert:
  uv__handle_start(handle);
  QUEUE_INSERT_TAIL(&w->watchers, &handle->watchers);
  handle->path = w->path;
  handle->cb = cb;
  handle->wd = wd;

  return 0;
}
