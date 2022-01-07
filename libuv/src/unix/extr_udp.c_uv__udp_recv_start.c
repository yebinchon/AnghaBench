
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_watcher; int loop; int * recv_cb; int * alloc_cb; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int * uv_udp_recv_cb ;
typedef int * uv_alloc_cb ;


 int AF_INET ;
 int POLLIN ;
 int UV_EALREADY ;
 int UV_EINVAL ;
 int uv__handle_start (TYPE_1__*) ;
 scalar_t__ uv__io_active (int *,int ) ;
 int uv__io_start (int ,int *,int ) ;
 int uv__udp_maybe_deferred_bind (TYPE_1__*,int ,int ) ;

int uv__udp_recv_start(uv_udp_t* handle,
                       uv_alloc_cb alloc_cb,
                       uv_udp_recv_cb recv_cb) {
  int err;

  if (alloc_cb == ((void*)0) || recv_cb == ((void*)0))
    return UV_EINVAL;

  if (uv__io_active(&handle->io_watcher, POLLIN))
    return UV_EALREADY;

  err = uv__udp_maybe_deferred_bind(handle, AF_INET, 0);
  if (err)
    return err;

  handle->alloc_cb = alloc_cb;
  handle->recv_cb = recv_cb;

  uv__io_start(handle->loop, &handle->io_watcher, POLLIN);
  uv__handle_start(handle);

  return 0;
}
