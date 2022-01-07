
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * recv_cb; int * alloc_cb; int io_watcher; int loop; } ;
typedef TYPE_1__ uv_udp_t ;


 int POLLIN ;
 int POLLOUT ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_active (int *,int ) ;
 int uv__io_stop (int ,int *,int ) ;

int uv__udp_recv_stop(uv_udp_t* handle) {
  uv__io_stop(handle->loop, &handle->io_watcher, POLLIN);

  if (!uv__io_active(&handle->io_watcher, POLLOUT))
    uv__handle_stop(handle);

  handle->alloc_cb = ((void*)0);
  handle->recv_cb = ((void*)0);

  return 0;
}
