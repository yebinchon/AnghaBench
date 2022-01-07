
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long flags; } ;
typedef TYPE_1__ uv_tcp_t ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int saddr ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AF_UNSPEC ;
 unsigned long UV_HANDLE_BOUND ;
 int UV__ERR (int ) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int new_socket (TYPE_1__*,int,unsigned long) ;
 int uv__stream_fd (TYPE_1__*) ;

__attribute__((used)) static int maybe_new_socket(uv_tcp_t* handle, int domain, unsigned long flags) {
  struct sockaddr_storage saddr;
  socklen_t slen;

  if (domain == AF_UNSPEC) {
    handle->flags |= flags;
    return 0;
  }

  if (uv__stream_fd(handle) != -1) {

    if (flags & UV_HANDLE_BOUND) {

      if (handle->flags & UV_HANDLE_BOUND) {

        handle->flags |= flags;
        return 0;
      }


      slen = sizeof(saddr);
      memset(&saddr, 0, sizeof(saddr));
      if (getsockname(uv__stream_fd(handle), (struct sockaddr*) &saddr, &slen))
        return UV__ERR(errno);

      if ((saddr.ss_family == AF_INET6 &&
          ((struct sockaddr_in6*) &saddr)->sin6_port != 0) ||
          (saddr.ss_family == AF_INET &&
          ((struct sockaddr_in*) &saddr)->sin_port != 0)) {

        handle->flags |= flags;
        return 0;
      }


      if (bind(uv__stream_fd(handle), (struct sockaddr*) &saddr, slen))
        return UV__ERR(errno);
    }

    handle->flags |= flags;
    return 0;
  }

  return new_socket(handle, domain, flags);
}
