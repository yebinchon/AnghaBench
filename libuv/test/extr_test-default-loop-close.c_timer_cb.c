
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_handle_t ;


 int timer_cb_called ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void timer_cb(uv_timer_t* timer) {
  timer_cb_called++;
  uv_close((uv_handle_t*) timer, ((void*)0));
}
