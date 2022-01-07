
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ uv_tcp_t ;


 int UV_HANDLE_TCP_SINGLE_ACCEPT ;

int uv_tcp_simultaneous_accepts(uv_tcp_t* handle, int enable) {
  if (enable)
    handle->flags &= ~UV_HANDLE_TCP_SINGLE_ACCEPT;
  else
    handle->flags |= UV_HANDLE_TCP_SINGLE_ACCEPT;
  return 0;
}
