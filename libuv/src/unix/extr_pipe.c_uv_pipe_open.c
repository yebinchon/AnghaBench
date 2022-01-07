
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_3__ {int loop; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef int uv_file ;


 scalar_t__ EINTR ;
 int F_GETFL ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int UV_EEXIST ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int fcntl (int ,int ) ;
 scalar_t__ uv__fd_exists (int ,int ) ;
 int uv__nonblock (int ,int) ;
 int uv__stream_open (int *,int ,int) ;
 int uv__stream_try_select (int *,int *) ;

int uv_pipe_open(uv_pipe_t* handle, uv_file fd) {
  int flags;
  int mode;
  int err;
  flags = 0;

  if (uv__fd_exists(handle->loop, fd))
    return UV_EEXIST;

  do
    mode = fcntl(fd, F_GETFL);
  while (mode == -1 && errno == EINTR);

  if (mode == -1)
    return UV__ERR(errno);

  err = uv__nonblock(fd, 1);
  if (err)
    return err;







  mode &= O_ACCMODE;
  if (mode != O_WRONLY)
    flags |= UV_HANDLE_READABLE;
  if (mode != O_RDONLY)
    flags |= UV_HANDLE_WRITABLE;

  return uv__stream_open((uv_stream_t*)handle, fd, flags);
}
