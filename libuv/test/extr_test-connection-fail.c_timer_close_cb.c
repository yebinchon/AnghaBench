
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int timer_close_cb_calls ;

__attribute__((used)) static void timer_close_cb(uv_handle_t* handle) {
  timer_close_cb_calls++;
}
