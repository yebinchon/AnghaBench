
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_loop_t ;


 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 int timer_cb ;
 int timer_cb_called ;
 int * uv_default_loop () ;
 scalar_t__ uv_run (int *,int ) ;
 scalar_t__ uv_timer_init (int *,int *) ;
 scalar_t__ uv_timer_start (int *,int ,int,int ) ;

__attribute__((used)) static void run_timer_loop_once(void) {
  uv_loop_t* loop;
  uv_timer_t timer_handle;

  loop = uv_default_loop();

  timer_cb_called = 0;

  ASSERT(0 == uv_timer_init(loop, &timer_handle));
  ASSERT(0 == uv_timer_start(&timer_handle, timer_cb, 1, 0));
  ASSERT(0 == uv_run(loop, UV_RUN_DEFAULT));
  ASSERT(1 == timer_cb_called);
}
