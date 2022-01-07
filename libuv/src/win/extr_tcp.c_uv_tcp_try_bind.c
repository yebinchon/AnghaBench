
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ socket; int delayed_error; int flags; int loop; } ;
typedef TYPE_1__ uv_tcp_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ SOCKET ;
typedef int DWORD ;


 scalar_t__ AF_INET6 ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int SOCKET_ERROR ;
 int SOCK_STREAM ;
 int UV_HANDLE_BOUND ;
 unsigned int UV_TCP_IPV6ONLY ;
 int WSAEADDRINUSE ;
 int WSAGetLastError () ;
 int bind (scalar_t__,struct sockaddr const*,unsigned int) ;
 int closesocket (scalar_t__) ;
 int setsockopt (scalar_t__,int ,int ,char const*,int) ;
 scalar_t__ socket (scalar_t__,int ,int ) ;
 int uv_tcp_set_socket (int ,TYPE_1__*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int uv_tcp_try_bind(uv_tcp_t* handle,
                           const struct sockaddr* addr,
                           unsigned int addrlen,
                           unsigned int flags) {
  DWORD err;
  int r;

  if (handle->socket == INVALID_SOCKET) {
    SOCKET sock;


    if ((flags & UV_TCP_IPV6ONLY) && addr->sa_family != AF_INET6)
      return ERROR_INVALID_PARAMETER;

    sock = socket(addr->sa_family, SOCK_STREAM, 0);
    if (sock == INVALID_SOCKET) {
      return WSAGetLastError();
    }

    err = uv_tcp_set_socket(handle->loop, handle, sock, addr->sa_family, 0);
    if (err) {
      closesocket(sock);
      return err;
    }
  }
  r = bind(handle->socket, addr, addrlen);

  if (r == SOCKET_ERROR) {
    err = WSAGetLastError();
    if (err == WSAEADDRINUSE) {

      handle->delayed_error = err;
    } else {
      return err;
    }
  }

  handle->flags |= UV_HANDLE_BOUND;

  return 0;
}
