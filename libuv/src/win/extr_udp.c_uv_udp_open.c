
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int loop; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int uv_os_sock_t ;
struct TYPE_8__ {int iAddressFamily; } ;
typedef TYPE_2__ WSAPROTOCOL_INFOW ;


 int GetLastError () ;
 scalar_t__ SOCKET_ERROR ;
 int SOL_SOCKET ;
 int SO_PROTOCOL_INFOW ;
 int UV_HANDLE_BOUND ;
 int UV_HANDLE_UDP_CONNECTED ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;
 scalar_t__ uv__udp_is_bound (TYPE_1__*) ;
 scalar_t__ uv__udp_is_connected (TYPE_1__*) ;
 int uv_translate_sys_error (int) ;
 int uv_udp_set_socket (int ,TYPE_1__*,int ,int ) ;

int uv_udp_open(uv_udp_t* handle, uv_os_sock_t sock) {
  WSAPROTOCOL_INFOW protocol_info;
  int opt_len;
  int err;


  opt_len = (int) sizeof protocol_info;
  if (getsockopt(sock,
                 SOL_SOCKET,
                 SO_PROTOCOL_INFOW,
                 (char*) &protocol_info,
                 &opt_len) == SOCKET_ERROR) {
    return uv_translate_sys_error(GetLastError());
  }

  err = uv_udp_set_socket(handle->loop,
                          handle,
                          sock,
                          protocol_info.iAddressFamily);
  if (err)
    return uv_translate_sys_error(err);

  if (uv__udp_is_bound(handle))
    handle->flags |= UV_HANDLE_BOUND;

  if (uv__udp_is_connected(handle))
    handle->flags |= UV_HANDLE_UDP_CONNECTED;

  return 0;
}
