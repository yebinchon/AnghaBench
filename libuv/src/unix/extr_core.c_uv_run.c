
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uv_run_mode ;
struct TYPE_13__ {scalar_t__ stop_flag; } ;
typedef TYPE_1__ uv_loop_t ;


 scalar_t__ UV_RUN_DEFAULT ;
 scalar_t__ UV_RUN_NOWAIT ;
 scalar_t__ UV_RUN_ONCE ;
 int uv__io_poll (TYPE_1__*,int) ;
 int uv__loop_alive (TYPE_1__*) ;
 int uv__run_check (TYPE_1__*) ;
 int uv__run_closing_handles (TYPE_1__*) ;
 int uv__run_idle (TYPE_1__*) ;
 int uv__run_pending (TYPE_1__*) ;
 int uv__run_prepare (TYPE_1__*) ;
 int uv__run_timers (TYPE_1__*) ;
 int uv__update_time (TYPE_1__*) ;
 int uv_backend_timeout (TYPE_1__*) ;

int uv_run(uv_loop_t* loop, uv_run_mode mode) {
  int timeout;
  int r;
  int ran_pending;

  r = uv__loop_alive(loop);
  if (!r)
    uv__update_time(loop);

  while (r != 0 && loop->stop_flag == 0) {
    uv__update_time(loop);
    uv__run_timers(loop);
    ran_pending = uv__run_pending(loop);
    uv__run_idle(loop);
    uv__run_prepare(loop);

    timeout = 0;
    if ((mode == UV_RUN_ONCE && !ran_pending) || mode == UV_RUN_DEFAULT)
      timeout = uv_backend_timeout(loop);

    uv__io_poll(loop, timeout);
    uv__run_check(loop);
    uv__run_closing_handles(loop);

    if (mode == UV_RUN_ONCE) {
      uv__update_time(loop);
      uv__run_timers(loop);
    }

    r = uv__loop_alive(loop);
    if (mode == UV_RUN_ONCE || mode == UV_RUN_NOWAIT)
      break;
  }




  if (loop->stop_flag != 0)
    loop->stop_flag = 0;

  return r;
}
