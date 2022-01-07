
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ socket; } ;
typedef TYPE_2__ uv_udp_t ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int INADDR_ANY ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_IF ;
 int IP_MULTICAST_IF ;
 scalar_t__ SOCKET_ERROR ;
 int UV_EBADF ;
 int UV_EINVAL ;
 int UV_HANDLE_IPV6 ;
 int WSAGetLastError () ;
 int abort () ;
 int assert (int) ;
 int htonl (int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,char*,int) ;
 scalar_t__ uv_ip4_addr (char const*,int ,struct sockaddr_in*) ;
 scalar_t__ uv_ip6_addr (char const*,int ,struct sockaddr_in6*) ;
 int uv_translate_sys_error (int ) ;

int uv_udp_set_multicast_interface(uv_udp_t* handle, const char* interface_addr) {
  struct sockaddr_storage addr_st;
  struct sockaddr_in* addr4;
  struct sockaddr_in6* addr6;

  addr4 = (struct sockaddr_in*) &addr_st;
  addr6 = (struct sockaddr_in6*) &addr_st;

  if (!interface_addr) {
    memset(&addr_st, 0, sizeof addr_st);
    if (handle->flags & UV_HANDLE_IPV6) {
      addr_st.ss_family = AF_INET6;
      addr6->sin6_scope_id = 0;
    } else {
      addr_st.ss_family = AF_INET;
      addr4->sin_addr.s_addr = htonl(INADDR_ANY);
    }
  } else if (uv_ip4_addr(interface_addr, 0, addr4) == 0) {

  } else if (uv_ip6_addr(interface_addr, 0, addr6) == 0) {

  } else {
    return UV_EINVAL;
  }

  if (handle->socket == INVALID_SOCKET)
    return UV_EBADF;

  if (addr_st.ss_family == AF_INET) {
    if (setsockopt(handle->socket,
                   IPPROTO_IP,
                   IP_MULTICAST_IF,
                   (char*) &addr4->sin_addr,
                   sizeof(addr4->sin_addr)) == SOCKET_ERROR) {
      return uv_translate_sys_error(WSAGetLastError());
    }
  } else if (addr_st.ss_family == AF_INET6) {
    if (setsockopt(handle->socket,
                   IPPROTO_IPV6,
                   IPV6_MULTICAST_IF,
                   (char*) &addr6->sin6_scope_id,
                   sizeof(addr6->sin6_scope_id)) == SOCKET_ERROR) {
      return uv_translate_sys_error(WSAGetLastError());
    }
  } else {
    assert(0 && "unexpected address family");
    abort();
  }

  return 0;
}
