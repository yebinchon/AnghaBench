
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dispatched_signals; scalar_t__ caught_signals; scalar_t__ signum; } ;
typedef TYPE_1__ uv_signal_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int UV_SIGNAL ;
 int uv__handle_init (int *,int *,int ) ;
 int uv__signal_loop_once_init (int *) ;

int uv_signal_init(uv_loop_t* loop, uv_signal_t* handle) {
  int err;

  err = uv__signal_loop_once_init(loop);
  if (err)
    return err;

  uv__handle_init(loop, (uv_handle_t*) handle, UV_SIGNAL);
  handle->signum = 0;
  handle->caught_signals = 0;
  handle->dispatched_signals = 0;

  return 0;
}
