
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uv_req_t ;
struct TYPE_12__ {int NumberOfHandles; TYPE_1__* Handles; } ;
struct TYPE_11__ {int submitted_events_1; unsigned char mask_events_1; int submitted_events_2; unsigned char mask_events_2; scalar_t__ events; int flags; int (* poll_cb ) (TYPE_2__*,int ,unsigned char) ;TYPE_3__ afd_poll_info_2; int poll_req_2; TYPE_3__ afd_poll_info_1; int poll_req_1; } ;
typedef TYPE_2__ uv_poll_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_10__ {int Events; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ AFD_POLL_INFO ;


 int AFD_POLL_ABORT ;
 int AFD_POLL_ACCEPT ;
 int AFD_POLL_CONNECT_FAIL ;
 int AFD_POLL_DISCONNECT ;
 int AFD_POLL_LOCAL_CLOSE ;
 int AFD_POLL_RECEIVE ;
 int AFD_POLL_SEND ;
 scalar_t__ GET_REQ_SOCK_ERROR (int *) ;
 int REQ_SUCCESS (int *) ;
 unsigned char UV_DISCONNECT ;
 int UV_HANDLE_CLOSING ;
 unsigned char UV_READABLE ;
 unsigned char UV_WRITABLE ;
 scalar_t__ WSAEINTR ;
 int assert (int ) ;
 int stub1 (TYPE_2__*,int ,unsigned char) ;
 int stub2 (TYPE_2__*,int ,unsigned char) ;
 int uv__fast_poll_submit_poll_req (int *,TYPE_2__*) ;
 int uv__handle_stop (TYPE_2__*) ;
 scalar_t__ uv__is_active (TYPE_2__*) ;
 int uv_translate_sys_error (scalar_t__) ;
 int uv_want_endgame (int *,int *) ;

__attribute__((used)) static void uv__fast_poll_process_poll_req(uv_loop_t* loop, uv_poll_t* handle,
    uv_req_t* req) {
  unsigned char mask_events;
  AFD_POLL_INFO* afd_poll_info;

  if (req == &handle->poll_req_1) {
    afd_poll_info = &handle->afd_poll_info_1;
    handle->submitted_events_1 = 0;
    mask_events = handle->mask_events_1;
  } else if (req == &handle->poll_req_2) {
    afd_poll_info = &handle->afd_poll_info_2;
    handle->submitted_events_2 = 0;
    mask_events = handle->mask_events_2;
  } else {
    assert(0);
    return;
  }


  if (!REQ_SUCCESS(req)) {
    DWORD error = GET_REQ_SOCK_ERROR(req);
    if (error != WSAEINTR && handle->events != 0) {
      handle->events = 0;
      handle->poll_cb(handle, uv_translate_sys_error(error), 0);
    }

  } else if (afd_poll_info->NumberOfHandles >= 1) {
    unsigned char events = 0;

    if ((afd_poll_info->Handles[0].Events & (AFD_POLL_RECEIVE |
        AFD_POLL_DISCONNECT | AFD_POLL_ACCEPT | AFD_POLL_ABORT)) != 0) {
      events |= UV_READABLE;
      if ((afd_poll_info->Handles[0].Events & AFD_POLL_DISCONNECT) != 0) {
        events |= UV_DISCONNECT;
      }
    }
    if ((afd_poll_info->Handles[0].Events & (AFD_POLL_SEND |
        AFD_POLL_CONNECT_FAIL)) != 0) {
      events |= UV_WRITABLE;
    }

    events &= handle->events & ~mask_events;

    if (afd_poll_info->Handles[0].Events & AFD_POLL_LOCAL_CLOSE) {

      handle->events = 0;
      if (uv__is_active(handle))
        uv__handle_stop(handle);
    }

    if (events != 0) {
      handle->poll_cb(handle, 0, events);
    }
  }

  if ((handle->events & ~(handle->submitted_events_1 |
      handle->submitted_events_2)) != 0) {
    uv__fast_poll_submit_poll_req(loop, handle);
  } else if ((handle->flags & UV_HANDLE_CLOSING) &&
             handle->submitted_events_1 == 0 &&
             handle->submitted_events_2 == 0) {
    uv_want_endgame(loop, (uv_handle_t*) handle);
  }
}
