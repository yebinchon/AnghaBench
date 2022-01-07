
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ socket; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int BOOL ;


 scalar_t__ INVALID_SOCKET ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int UV_EBADF ;
 int WSAGetLastError () ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,char*,int) ;
 int uv_translate_sys_error (int ) ;

int uv_udp_set_broadcast(uv_udp_t* handle, int value) {
  BOOL optval = (BOOL) value;

  if (handle->socket == INVALID_SOCKET)
    return UV_EBADF;

  if (setsockopt(handle->socket,
                 SOL_SOCKET,
                 SO_BROADCAST,
                 (char*) &optval,
                 sizeof optval)) {
    return uv_translate_sys_error(WSAGetLastError());
  }

  return 0;
}
