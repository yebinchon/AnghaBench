
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {int flags; scalar_t__ type; TYPE_1__ io_watcher; } ;
typedef TYPE_2__ uv_stream_t ;
typedef int enable ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOTSOCK ;
 int SOL_SOCKET ;
 int SO_OOBINLINE ;
 int UV_EBUSY ;
 int UV_HANDLE_TCP_KEEPALIVE ;
 int UV_HANDLE_TCP_NODELAY ;
 scalar_t__ UV_TCP ;
 int UV__ERR (scalar_t__) ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 scalar_t__ uv__tcp_keepalive (int,int,int) ;
 scalar_t__ uv__tcp_nodelay (int,int) ;

int uv__stream_open(uv_stream_t* stream, int fd, int flags) {




  if (!(stream->io_watcher.fd == -1 || stream->io_watcher.fd == fd))
    return UV_EBUSY;

  assert(fd >= 0);
  stream->flags |= flags;

  if (stream->type == UV_TCP) {
    if ((stream->flags & UV_HANDLE_TCP_NODELAY) && uv__tcp_nodelay(fd, 1))
      return UV__ERR(errno);


    if ((stream->flags & UV_HANDLE_TCP_KEEPALIVE) &&
        uv__tcp_keepalive(fd, 1, 60)) {
      return UV__ERR(errno);
    }
  }
  stream->io_watcher.fd = fd;

  return 0;
}
