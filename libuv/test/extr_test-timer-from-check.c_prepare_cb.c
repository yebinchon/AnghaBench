
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int ASSERT (int) ;
 int check_cb_called ;
 scalar_t__ prepare_cb_called ;
 int prepare_handle ;
 scalar_t__ timer_cb_called ;
 scalar_t__ uv_prepare_stop (int *) ;

__attribute__((used)) static void prepare_cb(uv_prepare_t* handle) {
  ASSERT(0 == uv_prepare_stop(&prepare_handle));
  ASSERT(0 == prepare_cb_called);
  ASSERT(1 == check_cb_called);
  ASSERT(0 == timer_cb_called);
  prepare_cb_called++;
}
