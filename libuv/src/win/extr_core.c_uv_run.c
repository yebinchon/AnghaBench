
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uv_run_mode ;
struct TYPE_14__ {scalar_t__ stop_flag; } ;
typedef TYPE_1__ uv_loop_t ;
typedef int DWORD ;


 scalar_t__ UV_RUN_DEFAULT ;
 scalar_t__ UV_RUN_NOWAIT ;
 scalar_t__ UV_RUN_ONCE ;
 scalar_t__ pGetQueuedCompletionStatusEx ;
 int uv__loop_alive (TYPE_1__*) ;
 int uv__poll (TYPE_1__*,int ) ;
 int uv__poll_wine (TYPE_1__*,int ) ;
 int uv__run_timers (TYPE_1__*) ;
 int uv_backend_timeout (TYPE_1__*) ;
 int uv_check_invoke (TYPE_1__*) ;
 int uv_idle_invoke (TYPE_1__*) ;
 int uv_prepare_invoke (TYPE_1__*) ;
 int uv_process_endgames (TYPE_1__*) ;
 int uv_process_reqs (TYPE_1__*) ;
 int uv_update_time (TYPE_1__*) ;

int uv_run(uv_loop_t *loop, uv_run_mode mode) {
  DWORD timeout;
  int r;
  int ran_pending;

  r = uv__loop_alive(loop);
  if (!r)
    uv_update_time(loop);

  while (r != 0 && loop->stop_flag == 0) {
    uv_update_time(loop);
    uv__run_timers(loop);

    ran_pending = uv_process_reqs(loop);
    uv_idle_invoke(loop);
    uv_prepare_invoke(loop);

    timeout = 0;
    if ((mode == UV_RUN_ONCE && !ran_pending) || mode == UV_RUN_DEFAULT)
      timeout = uv_backend_timeout(loop);

    if (pGetQueuedCompletionStatusEx)
      uv__poll(loop, timeout);
    else
      uv__poll_wine(loop, timeout);


    uv_check_invoke(loop);
    uv_process_endgames(loop);

    if (mode == UV_RUN_ONCE) {
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
