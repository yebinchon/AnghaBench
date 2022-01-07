
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;


 int ASSERT (int) ;
 scalar_t__ idle_cb_called ;
 scalar_t__ timer_cb_called ;
 int uv_idle_stop (int *) ;

__attribute__((used)) static void idle_cb(uv_idle_t* handle) {
  ASSERT(idle_cb_called == 0);
  ASSERT(timer_cb_called == 0);
  uv_idle_stop(handle);
  idle_cb_called++;
}
