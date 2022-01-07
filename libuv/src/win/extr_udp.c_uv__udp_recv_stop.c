
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* loop; } ;
typedef TYPE_2__ uv_udp_t ;
struct TYPE_5__ {int active_udp_streams; } ;


 int DECREASE_ACTIVE_COUNT (int ,TYPE_2__*) ;
 int UV_HANDLE_READING ;
 int loop ;

int uv__udp_recv_stop(uv_udp_t* handle) {
  if (handle->flags & UV_HANDLE_READING) {
    handle->flags &= ~UV_HANDLE_READING;
    handle->loop->active_udp_streams--;
    DECREASE_ACTIVE_COUNT(loop, handle);
  }

  return 0;
}
