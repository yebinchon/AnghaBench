
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int flags; } ;
typedef TYPE_1__ uv_udp_t ;
struct sockaddr_un {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 int UV_EDESTADDRREQ ;
 int UV_EINVAL ;
 int UV_EISCONN ;
 int UV_HANDLE_UDP_CONNECTED ;
 scalar_t__ UV_UDP ;

int uv__udp_check_before_send(uv_udp_t* handle, const struct sockaddr* addr) {
  unsigned int addrlen;

  if (handle->type != UV_UDP)
    return UV_EINVAL;

  if (addr != ((void*)0) && (handle->flags & UV_HANDLE_UDP_CONNECTED))
    return UV_EISCONN;

  if (addr == ((void*)0) && !(handle->flags & UV_HANDLE_UDP_CONNECTED))
    return UV_EDESTADDRREQ;

  if (addr != ((void*)0)) {
    if (addr->sa_family == AF_INET)
      addrlen = sizeof(struct sockaddr_in);
    else if (addr->sa_family == AF_INET6)
      addrlen = sizeof(struct sockaddr_in6);




    else
      return UV_EINVAL;
  } else {
    addrlen = 0;
  }

  return addrlen;
}
