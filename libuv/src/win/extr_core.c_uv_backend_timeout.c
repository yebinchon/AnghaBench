
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ stop_flag; scalar_t__ idle_handles; scalar_t__ endgame_handles; scalar_t__ pending_reqs_tail; } ;
typedef TYPE_1__ uv_loop_t ;


 int uv__has_active_handles (TYPE_1__ const*) ;
 int uv__has_active_reqs (TYPE_1__ const*) ;
 int uv__next_timeout (TYPE_1__ const*) ;

int uv_backend_timeout(const uv_loop_t* loop) {
  if (loop->stop_flag != 0)
    return 0;

  if (!uv__has_active_handles(loop) && !uv__has_active_reqs(loop))
    return 0;

  if (loop->pending_reqs_tail)
    return 0;

  if (loop->endgame_handles)
    return 0;

  if (loop->idle_handles)
    return 0;

  return uv__next_timeout(loop);
}
