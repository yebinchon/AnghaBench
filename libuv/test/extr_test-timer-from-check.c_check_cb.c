
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_check_t ;


 int ASSERT (int) ;
 scalar_t__ check_cb_called ;
 int check_handle ;
 int prepare_cb ;
 scalar_t__ prepare_cb_called ;
 int prepare_handle ;
 int timer_cb ;
 scalar_t__ timer_cb_called ;
 int timer_handle ;
 scalar_t__ uv_check_stop (int *) ;
 scalar_t__ uv_prepare_start (int *,int ) ;
 scalar_t__ uv_timer_start (int *,int ,int,int ) ;
 scalar_t__ uv_timer_stop (int *) ;

__attribute__((used)) static void check_cb(uv_check_t* handle) {
  ASSERT(0 == uv_check_stop(&check_handle));
  ASSERT(0 == uv_timer_stop(&timer_handle));
  ASSERT(0 == uv_timer_start(&timer_handle, timer_cb, 50, 0));
  ASSERT(0 == uv_prepare_start(&prepare_handle, prepare_cb));
  ASSERT(0 == prepare_cb_called);
  ASSERT(0 == check_cb_called);
  ASSERT(0 == timer_cb_called);
  check_cb_called++;
}
