
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int * uv_udp_recv_cb ;
typedef int * uv_alloc_cb ;


 int UV_EINVAL ;
 scalar_t__ UV_UDP ;
 int uv__udp_recv_start (TYPE_1__*,int *,int *) ;

int uv_udp_recv_start(uv_udp_t* handle,
                      uv_alloc_cb alloc_cb,
                      uv_udp_recv_cb recv_cb) {
  if (handle->type != UV_UDP || alloc_cb == ((void*)0) || recv_cb == ((void*)0))
    return UV_EINVAL;
  else
    return uv__udp_recv_start(handle, alloc_cb, recv_cb);
}
