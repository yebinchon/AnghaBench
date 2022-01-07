
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int timer_counter ;

__attribute__((used)) static void timer_counter_cb(uv_timer_t* handle) {
  ++timer_counter;
}
