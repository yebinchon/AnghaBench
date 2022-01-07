
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int overlapped; } ;
struct TYPE_16__ {TYPE_3__ io; } ;
struct TYPE_17__ {TYPE_4__ u; } ;
typedef TYPE_5__ uv_req_t ;
struct TYPE_13__ {int QuadPart; } ;
struct TYPE_19__ {int NumberOfHandles; TYPE_2__* Handles; TYPE_1__ Timeout; int Exclusive; } ;
struct TYPE_18__ {scalar_t__ submitted_events_1; int events; int mask_events_1; int mask_events_2; scalar_t__ submitted_events_2; scalar_t__ peer_socket; scalar_t__ socket; TYPE_7__ afd_poll_info_2; TYPE_5__ poll_req_2; TYPE_7__ afd_poll_info_1; TYPE_5__ poll_req_1; } ;
typedef TYPE_6__ uv_poll_t ;
typedef int uv_loop_t ;
struct TYPE_14__ {int Events; scalar_t__ Status; scalar_t__ Handle; } ;
typedef int SOCKET ;
typedef scalar_t__ HANDLE ;
typedef TYPE_7__ AFD_POLL_INFO ;


 int AFD_POLL_ABORT ;
 int AFD_POLL_ACCEPT ;
 int AFD_POLL_CONNECT_FAIL ;
 int AFD_POLL_DISCONNECT ;
 int AFD_POLL_RECEIVE ;
 int AFD_POLL_SEND ;
 int INT64_MAX ;
 int SET_REQ_ERROR (TYPE_5__*,scalar_t__) ;
 int TRUE ;
 int UV_DISCONNECT ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ WSA_IO_PENDING ;
 int memset (int *,int ,int) ;
 int uv_insert_pending_req (int *,TYPE_5__*) ;
 int uv_msafd_poll (int ,TYPE_7__*,TYPE_7__*,int *) ;

__attribute__((used)) static void uv__fast_poll_submit_poll_req(uv_loop_t* loop, uv_poll_t* handle) {
  uv_req_t* req;
  AFD_POLL_INFO* afd_poll_info;
  int result;


  if (handle->submitted_events_1 == 0) {
    req = &handle->poll_req_1;
    afd_poll_info = &handle->afd_poll_info_1;
    handle->submitted_events_1 = handle->events;
    handle->mask_events_1 = 0;
    handle->mask_events_2 = handle->events;
  } else if (handle->submitted_events_2 == 0) {
    req = &handle->poll_req_2;
    afd_poll_info = &handle->afd_poll_info_2;
    handle->submitted_events_2 = handle->events;
    handle->mask_events_1 = handle->events;
    handle->mask_events_2 = 0;
  } else {





    return;
  }



  afd_poll_info->Exclusive = TRUE;
  afd_poll_info->NumberOfHandles = 1;
  afd_poll_info->Timeout.QuadPart = INT64_MAX;
  afd_poll_info->Handles[0].Handle = (HANDLE) handle->socket;
  afd_poll_info->Handles[0].Status = 0;
  afd_poll_info->Handles[0].Events = 0;

  if (handle->events & UV_READABLE) {
    afd_poll_info->Handles[0].Events |= AFD_POLL_RECEIVE |
        AFD_POLL_DISCONNECT | AFD_POLL_ACCEPT | AFD_POLL_ABORT;
  } else {
    if (handle->events & UV_DISCONNECT) {
      afd_poll_info->Handles[0].Events |= AFD_POLL_DISCONNECT;
    }
  }
  if (handle->events & UV_WRITABLE) {
    afd_poll_info->Handles[0].Events |= AFD_POLL_SEND | AFD_POLL_CONNECT_FAIL;
  }

  memset(&req->u.io.overlapped, 0, sizeof req->u.io.overlapped);

  result = uv_msafd_poll((SOCKET) handle->peer_socket,
                         afd_poll_info,
                         afd_poll_info,
                         &req->u.io.overlapped);
  if (result != 0 && WSAGetLastError() != WSA_IO_PENDING) {

    SET_REQ_ERROR(req, WSAGetLastError());
    uv_insert_pending_req(loop, req);
  }
}
