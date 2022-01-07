
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_check_t ;


 int ASSERT (int) ;
 scalar_t__ check_cb_called ;
 int close_cb ;
 scalar_t__ close_cb_called ;
 int timer_cb_called ;
 int timer_handle2 ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void check_cb(uv_check_t* handle) {
  ASSERT(check_cb_called == 0);
  ASSERT(timer_cb_called == 1);
  ASSERT(close_cb_called == 0);
  uv_close((uv_handle_t*) handle, close_cb);
  uv_close((uv_handle_t*) &timer_handle2, close_cb);
  check_cb_called++;
}
