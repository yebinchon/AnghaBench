
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ repeat; int * timer_cb; } ;
typedef TYPE_1__ uv_timer_t ;


 int UV_EINVAL ;
 int uv_timer_start (TYPE_1__*,int *,scalar_t__,scalar_t__) ;
 int uv_timer_stop (TYPE_1__*) ;

int uv_timer_again(uv_timer_t* handle) {
  if (handle->timer_cb == ((void*)0))
    return UV_EINVAL;

  if (handle->repeat) {
    uv_timer_stop(handle);
    uv_timer_start(handle, handle->timer_cb, handle->repeat, handle->repeat);
  }

  return 0;
}
