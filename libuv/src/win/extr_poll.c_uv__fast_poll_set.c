
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int flags; int events; int submitted_events_1; int submitted_events_2; int loop; } ;
typedef TYPE_1__ uv_poll_t ;
typedef int uv_loop_t ;


 int UV_DISCONNECT ;
 int UV_HANDLE_CLOSING ;
 scalar_t__ UV_POLL ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int assert (int) ;
 int uv__fast_poll_submit_poll_req (int ,TYPE_1__*) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__handle_stop (TYPE_1__*) ;

__attribute__((used)) static int uv__fast_poll_set(uv_loop_t* loop, uv_poll_t* handle, int events) {
  assert(handle->type == UV_POLL);
  assert(!(handle->flags & UV_HANDLE_CLOSING));
  assert((events & ~(UV_READABLE | UV_WRITABLE | UV_DISCONNECT)) == 0);

  handle->events = events;

  if (handle->events != 0) {
    uv__handle_start(handle);
  } else {
    uv__handle_stop(handle);
  }

  if ((handle->events & ~(handle->submitted_events_1 |
      handle->submitted_events_2)) != 0) {
    uv__fast_poll_submit_poll_req(handle->loop, handle);
  }

  return 0;
}
