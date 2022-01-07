
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_handle_t ;
typedef int uv_close_cb ;
struct linger {int member_0; int member_1; } ;
typedef int l ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int UV_EINVAL ;
 int UV_HANDLE_SHUTTING ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ setsockopt (int,int ,int ,struct linger*,int) ;
 int uv__stream_fd (TYPE_1__*) ;
 int uv_close (int *,int ) ;

int uv_tcp_close_reset(uv_tcp_t* handle, uv_close_cb close_cb) {
  int fd;
  struct linger l = { 1, 0 };


  if (handle->flags & UV_HANDLE_SHUTTING)
    return UV_EINVAL;

  fd = uv__stream_fd(handle);
  if (0 != setsockopt(fd, SOL_SOCKET, SO_LINGER, &l, sizeof(l)))
    return UV__ERR(errno);

  uv_close((uv_handle_t*) handle, close_cb);
  return 0;
}
