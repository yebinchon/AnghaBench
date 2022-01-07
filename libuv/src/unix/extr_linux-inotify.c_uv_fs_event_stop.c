
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wd; int loop; int watchers; int * path; } ;
typedef TYPE_1__ uv_fs_event_t ;
struct watcher_list {int dummy; } ;


 int QUEUE_REMOVE (int *) ;
 int assert (int ) ;
 struct watcher_list* find_watcher (int ,int) ;
 int maybe_free_watcher_list (struct watcher_list*,int ) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__is_active (TYPE_1__*) ;

int uv_fs_event_stop(uv_fs_event_t* handle) {
  struct watcher_list* w;

  if (!uv__is_active(handle))
    return 0;

  w = find_watcher(handle->loop, handle->wd);
  assert(w != ((void*)0));

  handle->wd = -1;
  handle->path = ((void*)0);
  uv__handle_stop(handle);
  QUEUE_REMOVE(&handle->watchers);

  maybe_free_watcher_list(w, handle->loop);

  return 0;
}
