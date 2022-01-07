
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {int flags; TYPE_1__ io_watcher; int loop; } ;
typedef TYPE_2__ uv_udp_t ;
typedef int uv_os_sock_t ;


 int UV_EBUSY ;
 int UV_EEXIST ;
 int UV_HANDLE_UDP_CONNECTED ;
 scalar_t__ uv__fd_exists (int ,int) ;
 int uv__nonblock (int,int) ;
 int uv__set_reuse (int) ;
 scalar_t__ uv__udp_is_connected (TYPE_2__*) ;

int uv_udp_open(uv_udp_t* handle, uv_os_sock_t sock) {
  int err;


  if (handle->io_watcher.fd != -1)
    return UV_EBUSY;

  if (uv__fd_exists(handle->loop, sock))
    return UV_EEXIST;

  err = uv__nonblock(sock, 1);
  if (err)
    return err;

  err = uv__set_reuse(sock);
  if (err)
    return err;

  handle->io_watcher.fd = sock;
  if (uv__udp_is_connected(handle))
    handle->flags |= UV_HANDLE_UDP_CONNECTED;

  return 0;
}
