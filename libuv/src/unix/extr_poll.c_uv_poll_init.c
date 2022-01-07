
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * poll_cb; int io_watcher; } ;
typedef TYPE_1__ uv_poll_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int UV_EEXIST ;
 int UV_ENOTTY ;
 int UV_POLL ;
 scalar_t__ uv__fd_exists (int *,int) ;
 int uv__handle_init (int *,int *,int ) ;
 int uv__io_check_fd (int *,int) ;
 int uv__io_init (int *,int ,int) ;
 int uv__nonblock (int,int) ;
 int uv__nonblock_fcntl (int,int) ;
 int uv__nonblock_ioctl (int,int) ;
 int uv__poll_io ;

int uv_poll_init(uv_loop_t* loop, uv_poll_t* handle, int fd) {
  int err;

  if (uv__fd_exists(loop, fd))
    return UV_EEXIST;

  err = uv__io_check_fd(loop, fd);
  if (err)
    return err;




  err = uv__nonblock(fd, 1);
  if (err == UV_ENOTTY)
    if (uv__nonblock == uv__nonblock_ioctl)
      err = uv__nonblock_fcntl(fd, 1);

  if (err)
    return err;

  uv__handle_init(loop, (uv_handle_t*) handle, UV_POLL);
  uv__io_init(&handle->io_watcher, uv__poll_io, fd);
  handle->poll_cb = ((void*)0);
  return 0;
}
