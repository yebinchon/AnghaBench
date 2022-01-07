
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;


 scalar_t__ NUM_TICKS ;
 scalar_t__ ticks ;
 int uv_idle_stop (int *) ;

__attribute__((used)) static void idle_cb(uv_idle_t* handle) {
  if (++ticks == NUM_TICKS)
    uv_idle_stop(handle);
}
