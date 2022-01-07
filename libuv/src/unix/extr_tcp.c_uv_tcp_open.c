
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loop; } ;
typedef TYPE_1__ uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_os_sock_t ;


 int UV_EEXIST ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 scalar_t__ uv__fd_exists (int ,int ) ;
 int uv__nonblock (int ,int) ;
 int uv__stream_open (int *,int ,int) ;

int uv_tcp_open(uv_tcp_t* handle, uv_os_sock_t sock) {
  int err;

  if (uv__fd_exists(handle->loop, sock))
    return UV_EEXIST;

  err = uv__nonblock(sock, 1);
  if (err)
    return err;

  return uv__stream_open((uv_stream_t*)handle,
                         sock,
                         UV_HANDLE_READABLE | UV_HANDLE_WRITABLE);
}
