
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ socket; } ;
typedef TYPE_3__ uv_poll_t ;
typedef int uv_loop_t ;
struct TYPE_7__ {int QuadPart; } ;
struct TYPE_10__ {int NumberOfHandles; TYPE_2__* Handles; TYPE_1__ Timeout; int Exclusive; } ;
struct TYPE_8__ {int Events; scalar_t__ Status; scalar_t__ Handle; } ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef TYPE_4__ AFD_POLL_INFO ;


 int AFD_POLL_ALL ;
 int INT64_MAX ;
 int SOCKET_ERROR ;
 int TRUE ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ WSA_IO_PENDING ;
 int uv__get_afd_poll_info_dummy () ;
 int uv__get_overlapped_dummy () ;
 int uv_msafd_poll (scalar_t__,TYPE_4__*,int ,int ) ;

__attribute__((used)) static int uv__fast_poll_cancel_poll_req(uv_loop_t* loop, uv_poll_t* handle) {
  AFD_POLL_INFO afd_poll_info;
  int result;

  afd_poll_info.Exclusive = TRUE;
  afd_poll_info.NumberOfHandles = 1;
  afd_poll_info.Timeout.QuadPart = INT64_MAX;
  afd_poll_info.Handles[0].Handle = (HANDLE) handle->socket;
  afd_poll_info.Handles[0].Status = 0;
  afd_poll_info.Handles[0].Events = AFD_POLL_ALL;

  result = uv_msafd_poll(handle->socket,
                         &afd_poll_info,
                         uv__get_afd_poll_info_dummy(),
                         uv__get_overlapped_dummy());

  if (result == SOCKET_ERROR) {
    DWORD error = WSAGetLastError();
    if (error != WSA_IO_PENDING)
      return error;
  }

  return 0;
}
