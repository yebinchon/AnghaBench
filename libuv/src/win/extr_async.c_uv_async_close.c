
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_4__ {int async_sent; } ;
typedef TYPE_1__ uv_async_t ;


 int uv__handle_closing (TYPE_1__*) ;
 int uv_want_endgame (int *,int *) ;

void uv_async_close(uv_loop_t* loop, uv_async_t* handle) {
  if (!((uv_async_t*)handle)->async_sent) {
    uv_want_endgame(loop, (uv_handle_t*) handle);
  }

  uv__handle_closing(handle);
}
