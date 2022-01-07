
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_7__ {int * path; TYPE_4__ event_watcher; int loop; int * cf_cb; } ;
typedef TYPE_1__ uv_fs_event_t ;


 int uv__close (int) ;
 int uv__free (int *) ;
 int uv__fsevents_close (TYPE_1__*) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__has_forked_with_cfrunloop ;
 int uv__io_close (int ,TYPE_4__*) ;
 int uv__is_active (TYPE_1__*) ;

int uv_fs_event_stop(uv_fs_event_t* handle) {
  int r;
  r = 0;

  if (!uv__is_active(handle))
    return 0;

  uv__handle_stop(handle);






  if (handle->event_watcher.fd != -1) {
    uv__io_close(handle->loop, &handle->event_watcher);
    uv__close(handle->event_watcher.fd);
    handle->event_watcher.fd = -1;
  }

  uv__free(handle->path);
  handle->path = ((void*)0);

  return r;
}
