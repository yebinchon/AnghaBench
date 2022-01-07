
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ socket; int loop; } ;
typedef TYPE_1__ uv_udp_t ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ SOCKET ;
typedef int DWORD ;


 scalar_t__ AF_INET6 ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int UV_HANDLE_BOUND ;
 int UV_HANDLE_IPV6 ;
 unsigned int UV_UDP_IPV6ONLY ;
 unsigned int UV_UDP_REUSEADDR ;
 int WSAGetLastError () ;
 int bind (scalar_t__,struct sockaddr const*,unsigned int) ;
 int closesocket (scalar_t__) ;
 int setsockopt (scalar_t__,int ,int ,char*,int) ;
 scalar_t__ socket (scalar_t__,int ,int ) ;
 int uv_udp_set_socket (int ,TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int uv_udp_maybe_bind(uv_udp_t* handle,
                             const struct sockaddr* addr,
                             unsigned int addrlen,
                             unsigned int flags) {
  int r;
  int err;
  DWORD no = 0;

  if (handle->flags & UV_HANDLE_BOUND)
    return 0;

  if ((flags & UV_UDP_IPV6ONLY) && addr->sa_family != AF_INET6) {

    return ERROR_INVALID_PARAMETER;
  }

  if (handle->socket == INVALID_SOCKET) {
    SOCKET sock = socket(addr->sa_family, SOCK_DGRAM, 0);
    if (sock == INVALID_SOCKET) {
      return WSAGetLastError();
    }

    err = uv_udp_set_socket(handle->loop, handle, sock, addr->sa_family);
    if (err) {
      closesocket(sock);
      return err;
    }
  }

  if (flags & UV_UDP_REUSEADDR) {
    DWORD yes = 1;

    if (setsockopt(handle->socket,
                   SOL_SOCKET,
                   SO_REUSEADDR,
                   (char*) &yes,
                   sizeof yes) == SOCKET_ERROR) {
      err = WSAGetLastError();
      return err;
    }
  }

  if (addr->sa_family == AF_INET6)
    handle->flags |= UV_HANDLE_IPV6;

  if (addr->sa_family == AF_INET6 && !(flags & UV_UDP_IPV6ONLY)) {






    setsockopt(handle->socket,
               IPPROTO_IPV6,
               IPV6_V6ONLY,
               (char*) &no,
               sizeof no);
  }

  r = bind(handle->socket, addr, addrlen);
  if (r == SOCKET_ERROR) {
    return WSAGetLastError();
  }

  handle->flags |= UV_HANDLE_BOUND;

  return 0;
}
