
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_socklen_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 int EVUTIL_SOCK_CLOEXEC ;
 int EVUTIL_SOCK_NONBLOCK ;
 scalar_t__ accept (scalar_t__,struct sockaddr*,int *) ;
 scalar_t__ accept4 (scalar_t__,struct sockaddr*,int *,int) ;
 scalar_t__ errno ;
 int evutil_closesocket (scalar_t__) ;
 scalar_t__ evutil_fast_socket_closeonexec (scalar_t__) ;
 scalar_t__ evutil_fast_socket_nonblocking (scalar_t__) ;

evutil_socket_t
evutil_accept4_(evutil_socket_t sockfd, struct sockaddr *addr,
    ev_socklen_t *addrlen, int flags)
{
 evutil_socket_t result;
 result = accept(sockfd, addr, addrlen);
 if (result < 0)
  return result;

 if (flags & EVUTIL_SOCK_CLOEXEC) {
  if (evutil_fast_socket_closeonexec(result) < 0) {
   evutil_closesocket(result);
   return -1;
  }
 }
 if (flags & EVUTIL_SOCK_NONBLOCK) {
  if (evutil_fast_socket_nonblocking(result) < 0) {
   evutil_closesocket(result);
   return -1;
  }
 }
 return result;
}
