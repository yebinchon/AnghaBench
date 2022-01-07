
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inotify_fd; int inotify_read_watcher; } ;
typedef TYPE_1__ uv_loop_t ;


 int POLLIN ;
 int new_inotify_fd () ;
 int uv__inotify_read ;
 int uv__io_init (int *,int ,int) ;
 int uv__io_start (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int init_inotify(uv_loop_t* loop) {
  int err;

  if (loop->inotify_fd != -1)
    return 0;

  err = new_inotify_fd();
  if (err < 0)
    return err;

  loop->inotify_fd = err;
  uv__io_init(&loop->inotify_read_watcher, uv__inotify_read, loop->inotify_fd);
  uv__io_start(loop, &loop->inotify_read_watcher, POLLIN);

  return 0;
}
