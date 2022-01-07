
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ reqs_pending; } ;
typedef TYPE_1__ uv_udp_t ;
typedef int uv_loop_t ;


 int UV_HANDLE_CLOSED ;
 int UV_HANDLE_CLOSING ;
 int assert (int) ;
 int uv__handle_close (TYPE_1__*) ;

void uv_udp_endgame(uv_loop_t* loop, uv_udp_t* handle) {
  if (handle->flags & UV_HANDLE_CLOSING &&
      handle->reqs_pending == 0) {
    assert(!(handle->flags & UV_HANDLE_CLOSED));
    uv__handle_close(handle);
  }
}
