
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int backend_fd; void* inotify_watchers; } ;
typedef TYPE_1__ uv_loop_t ;


 int uv__close (int) ;
 int uv__inotify_fork (TYPE_1__*,void*) ;
 int uv__platform_loop_delete (TYPE_1__*) ;
 int uv__platform_loop_init (TYPE_1__*) ;

int uv__io_fork(uv_loop_t* loop) {
  int err;
  void* old_watchers;

  old_watchers = loop->inotify_watchers;

  uv__close(loop->backend_fd);
  loop->backend_fd = -1;
  uv__platform_loop_delete(loop);

  err = uv__platform_loop_init(loop);
  if (err)
    return err;

  return uv__inotify_fork(loop, old_watchers);
}
