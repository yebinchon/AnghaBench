
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ caught_signals; scalar_t__ dispatched_signals; } ;
typedef TYPE_1__ uv_signal_t ;
typedef int uv_handle_t ;


 int uv__make_close_pending (int *) ;
 int uv__signal_stop (TYPE_1__*) ;

void uv__signal_close(uv_signal_t* handle) {

  uv__signal_stop(handle);





  if (handle->caught_signals == handle->dispatched_signals) {
    uv__make_close_pending((uv_handle_t*) handle);
  }
}
