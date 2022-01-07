
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ submitted_events_1; scalar_t__ submitted_events_2; scalar_t__ events; } ;
typedef TYPE_1__ uv_poll_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int uv__fast_poll_cancel_poll_req (int *,TYPE_1__*) ;
 int uv__handle_closing (TYPE_1__*) ;
 int uv_want_endgame (int *,int *) ;

__attribute__((used)) static int uv__fast_poll_close(uv_loop_t* loop, uv_poll_t* handle) {
  handle->events = 0;
  uv__handle_closing(handle);

  if (handle->submitted_events_1 == 0 &&
      handle->submitted_events_2 == 0) {
    uv_want_endgame(loop, (uv_handle_t*) handle);
    return 0;
  } else {


    return uv__fast_poll_cancel_poll_req(loop, handle);
  }
}
