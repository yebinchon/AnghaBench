
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ repeat; int * timer_cb; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int UV_TIMER ;
 int uv__handle_init (int *,int *,int ) ;

int uv_timer_init(uv_loop_t* loop, uv_timer_t* handle) {
  uv__handle_init(loop, (uv_handle_t*)handle, UV_TIMER);
  handle->timer_cb = ((void*)0);
  handle->repeat = 0;
  return 0;
}
