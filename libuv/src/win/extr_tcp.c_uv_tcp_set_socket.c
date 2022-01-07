
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ socket; int flags; } ;
typedef TYPE_1__ uv_tcp_t ;
struct TYPE_8__ {int iocp; } ;
typedef TYPE_2__ uv_loop_t ;
typedef int ULONG_PTR ;
typedef int UCHAR ;
typedef scalar_t__ SOCKET ;
typedef int HANDLE ;
typedef int DWORD ;


 int AF_INET6 ;
 int * CreateIoCompletionPort (int ,int ,int ,int ) ;
 int FILE_SKIP_COMPLETION_PORT_ON_SUCCESS ;
 int FILE_SKIP_SET_EVENT_ON_HANDLE ;
 int FIONBIO ;
 int GetLastError () ;
 int HANDLE_FLAG_INHERIT ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SOCKET_ERROR ;
 int SetFileCompletionNotificationModes (int ,int) ;
 int SetHandleInformation (int ,int ,int ) ;
 int UV_EBUSY ;
 int UV_HANDLE_EMULATE_IOCP ;
 int UV_HANDLE_IPV6 ;
 int UV_HANDLE_SYNC_BYPASS_IOCP ;
 int UV_HANDLE_TCP_KEEPALIVE ;
 int UV_HANDLE_TCP_NODELAY ;
 int WSAGetLastError () ;
 int assert (int) ;
 scalar_t__ ioctlsocket (scalar_t__,int ,int*) ;
 int uv__tcp_keepalive (TYPE_1__*,scalar_t__,int,int) ;
 int uv__tcp_nodelay (TYPE_1__*,scalar_t__,int) ;
 int uv_tcp_non_ifs_lsp_ipv4 ;
 int uv_tcp_non_ifs_lsp_ipv6 ;

__attribute__((used)) static int uv_tcp_set_socket(uv_loop_t* loop,
                             uv_tcp_t* handle,
                             SOCKET socket,
                             int family,
                             int imported) {
  DWORD yes = 1;
  int non_ifs_lsp;
  int err;

  if (handle->socket != INVALID_SOCKET)
    return UV_EBUSY;


  if (ioctlsocket(socket, FIONBIO, &yes) == SOCKET_ERROR) {
    return WSAGetLastError();
  }


  if (!SetHandleInformation((HANDLE) socket, HANDLE_FLAG_INHERIT, 0))
    return GetLastError();



  if (CreateIoCompletionPort((HANDLE)socket,
                             loop->iocp,
                             (ULONG_PTR)socket,
                             0) == ((void*)0)) {
    if (imported) {
      handle->flags |= UV_HANDLE_EMULATE_IOCP;
    } else {
      return GetLastError();
    }
  }

  if (family == AF_INET6) {
    non_ifs_lsp = uv_tcp_non_ifs_lsp_ipv6;
  } else {
    non_ifs_lsp = uv_tcp_non_ifs_lsp_ipv4;
  }

  if (!(handle->flags & UV_HANDLE_EMULATE_IOCP) && !non_ifs_lsp) {
    UCHAR sfcnm_flags =
        FILE_SKIP_SET_EVENT_ON_HANDLE | FILE_SKIP_COMPLETION_PORT_ON_SUCCESS;
    if (!SetFileCompletionNotificationModes((HANDLE) socket, sfcnm_flags))
      return GetLastError();
    handle->flags |= UV_HANDLE_SYNC_BYPASS_IOCP;
  }

  if (handle->flags & UV_HANDLE_TCP_NODELAY) {
    err = uv__tcp_nodelay(handle, socket, 1);
    if (err)
      return err;
  }


  if (handle->flags & UV_HANDLE_TCP_KEEPALIVE) {
    err = uv__tcp_keepalive(handle, socket, 1, 60);
    if (err)
      return err;
  }

  handle->socket = socket;

  if (family == AF_INET6) {
    handle->flags |= UV_HANDLE_IPV6;
  } else {
    assert(!(handle->flags & UV_HANDLE_IPV6));
  }

  return 0;
}
