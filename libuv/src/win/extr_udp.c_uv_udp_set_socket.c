
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ socket; int flags; int func_wsarecvfrom; int func_wsarecv; } ;
typedef TYPE_2__ uv_udp_t ;
struct TYPE_9__ {int iocp; } ;
typedef TYPE_3__ uv_loop_t ;
struct TYPE_7__ {int ChainLen; } ;
struct TYPE_10__ {TYPE_1__ ProtocolChain; } ;
typedef TYPE_4__ WSAPROTOCOL_INFOW ;
typedef int ULONG_PTR ;
typedef scalar_t__ SOCKET ;
typedef int HANDLE ;
typedef int DWORD ;


 int AF_INET6 ;
 int * CreateIoCompletionPort (int ,int ,int ,int ) ;
 scalar_t__ ERROR_INVALID_FUNCTION ;
 int FILE_SKIP_COMPLETION_PORT_ON_SUCCESS ;
 int FILE_SKIP_SET_EVENT_ON_HANDLE ;
 int FIONBIO ;
 int GetLastError () ;
 int HANDLE_FLAG_INHERIT ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SOCKET_ERROR ;
 int SOL_SOCKET ;
 int SO_PROTOCOL_INFOW ;
 scalar_t__ SetFileCompletionNotificationModes (int ,int) ;
 int SetHandleInformation (int ,int ,int ) ;
 int UV_EBUSY ;
 int UV_HANDLE_IPV6 ;
 int UV_HANDLE_SYNC_BYPASS_IOCP ;
 int WSAGetLastError () ;
 int assert (int) ;
 scalar_t__ getsockopt (scalar_t__,int ,int ,char*,int*) ;
 scalar_t__ ioctlsocket (scalar_t__,int ,int*) ;
 int uv_wsarecv_workaround ;
 int uv_wsarecvfrom_workaround ;

__attribute__((used)) static int uv_udp_set_socket(uv_loop_t* loop, uv_udp_t* handle, SOCKET socket,
    int family) {
  DWORD yes = 1;
  WSAPROTOCOL_INFOW info;
  int opt_len;

  if (handle->socket != INVALID_SOCKET)
    return UV_EBUSY;


  if (ioctlsocket(socket, FIONBIO, &yes) == SOCKET_ERROR) {
    return WSAGetLastError();
  }


  if (!SetHandleInformation((HANDLE)socket, HANDLE_FLAG_INHERIT, 0)) {
    return GetLastError();
  }



  if (CreateIoCompletionPort((HANDLE)socket,
                             loop->iocp,
                             (ULONG_PTR)socket,
                             0) == ((void*)0)) {
    return GetLastError();
  }






  opt_len = (int) sizeof info;
  if (getsockopt(
          socket, SOL_SOCKET, SO_PROTOCOL_INFOW, (char*) &info, &opt_len) ==
      SOCKET_ERROR) {
    return GetLastError();
  }

  if (info.ProtocolChain.ChainLen == 1) {
    if (SetFileCompletionNotificationModes(
            (HANDLE) socket,
            FILE_SKIP_SET_EVENT_ON_HANDLE |
                FILE_SKIP_COMPLETION_PORT_ON_SUCCESS)) {
      handle->flags |= UV_HANDLE_SYNC_BYPASS_IOCP;
      handle->func_wsarecv = uv_wsarecv_workaround;
      handle->func_wsarecvfrom = uv_wsarecvfrom_workaround;
    } else if (GetLastError() != ERROR_INVALID_FUNCTION) {
      return GetLastError();
    }
  }

  handle->socket = socket;

  if (family == AF_INET6) {
    handle->flags |= UV_HANDLE_IPV6;
  } else {
    assert(!(handle->flags & UV_HANDLE_IPV6));
  }

  return 0;
}
