
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cb; } ;
struct TYPE_5__ {TYPE_4__ io_watcher; int loop; int connection_cb; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef int uv_connection_cb ;


 int POLLIN ;
 int SOMAXCONN ;
 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ listen (int,int) ;
 int uv__io_start (int ,TYPE_4__*,int ) ;
 int uv__server_io ;
 int uv__stream_fd (TYPE_1__*) ;

int uv_pipe_listen(uv_pipe_t* handle, int backlog, uv_connection_cb cb) {
  if (uv__stream_fd(handle) == -1)
    return UV_EINVAL;
  if (listen(uv__stream_fd(handle), backlog))
    return UV__ERR(errno);

  handle->connection_cb = cb;
  handle->io_watcher.cb = uv__server_io;
  uv__io_start(handle->loop, &handle->io_watcher, POLLIN);
  return 0;
}
