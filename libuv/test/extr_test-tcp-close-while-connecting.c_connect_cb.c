
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_t ;


 int ASSERT (int) ;
 int UV_ECANCELED ;
 int UV_ENETUNREACH ;
 int connect_cb_called ;
 int netunreach_errors ;
 int timer2_handle ;
 int uv_timer_stop (int *) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {




  ASSERT(status == UV_ECANCELED || status == UV_ENETUNREACH);
  uv_timer_stop(&timer2_handle);
  connect_cb_called++;
  if (status == UV_ENETUNREACH)
    netunreach_errors++;
}
