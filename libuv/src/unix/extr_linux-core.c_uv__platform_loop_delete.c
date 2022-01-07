
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inotify_fd; int inotify_read_watcher; } ;
typedef TYPE_1__ uv_loop_t ;


 int POLLIN ;
 int uv__close (int) ;
 int uv__io_stop (TYPE_1__*,int *,int ) ;

void uv__platform_loop_delete(uv_loop_t* loop) {
  if (loop->inotify_fd == -1) return;
  uv__io_stop(loop, &loop->inotify_read_watcher, POLLIN);
  uv__close(loop->inotify_fd);
  loop->inotify_fd = -1;
}
