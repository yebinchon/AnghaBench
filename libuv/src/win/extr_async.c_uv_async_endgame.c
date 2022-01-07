
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_4__ {int flags; int async_sent; } ;
typedef TYPE_1__ uv_async_t ;


 int UV_HANDLE_CLOSED ;
 int UV_HANDLE_CLOSING ;
 int assert (int) ;
 int uv__handle_close (TYPE_1__*) ;

void uv_async_endgame(uv_loop_t* loop, uv_async_t* handle) {
  if (handle->flags & UV_HANDLE_CLOSING &&
      !handle->async_sent) {
    assert(!(handle->flags & UV_HANDLE_CLOSED));
    uv__handle_close(handle);
  }
}
