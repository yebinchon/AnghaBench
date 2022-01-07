
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef int on ;
typedef int evutil_socket_t ;
typedef int evconnlistener_cb ;


 int AF_UNIX ;
 int AF_UNSPEC ;
 int EVUTIL_SOCK_CLOEXEC ;
 int EVUTIL_SOCK_NONBLOCK ;
 unsigned int LEV_OPT_BIND_IPV6ONLY ;
 unsigned int LEV_OPT_CLOSE_ON_EXEC ;
 unsigned int LEV_OPT_DEFERRED_ACCEPT ;
 unsigned int LEV_OPT_REUSEABLE ;
 unsigned int LEV_OPT_REUSEABLE_PORT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 scalar_t__ bind (int,struct sockaddr const*,int) ;
 struct evconnlistener* evconnlistener_new (struct event_base*,int ,void*,unsigned int,int,int) ;
 scalar_t__ evutil_check_working_afunix_ () ;
 int evutil_closesocket (int) ;
 scalar_t__ evutil_make_listen_socket_ipv6only (int) ;
 scalar_t__ evutil_make_listen_socket_reuseable (int) ;
 scalar_t__ evutil_make_listen_socket_reuseable_port (int) ;
 scalar_t__ evutil_make_tcp_listen_socket_deferred (int) ;
 int evutil_socket_ (int,int,int ) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

struct evconnlistener *
evconnlistener_new_bind(struct event_base *base, evconnlistener_cb cb,
    void *ptr, unsigned flags, int backlog, const struct sockaddr *sa,
    int socklen)
{
 struct evconnlistener *listener;
 evutil_socket_t fd;
 int on = 1;
 int family = sa ? sa->sa_family : AF_UNSPEC;
 int socktype = SOCK_STREAM | EVUTIL_SOCK_NONBLOCK;
 int support_keepalive = 1;

 if (backlog == 0)
  return ((void*)0);

 if (flags & LEV_OPT_CLOSE_ON_EXEC)
  socktype |= EVUTIL_SOCK_CLOEXEC;

 fd = evutil_socket_(family, socktype, 0);
 if (fd == -1)
  return ((void*)0);
 if (support_keepalive) {
  if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, (void*)&on, sizeof(on))<0)
   goto err;
 }

 if (flags & LEV_OPT_REUSEABLE) {
  if (evutil_make_listen_socket_reuseable(fd) < 0)
   goto err;
 }

 if (flags & LEV_OPT_REUSEABLE_PORT) {
  if (evutil_make_listen_socket_reuseable_port(fd) < 0)
   goto err;
 }

 if (flags & LEV_OPT_DEFERRED_ACCEPT) {
  if (evutil_make_tcp_listen_socket_deferred(fd) < 0)
   goto err;
 }

 if (flags & LEV_OPT_BIND_IPV6ONLY) {
  if (evutil_make_listen_socket_ipv6only(fd) < 0)
   goto err;
 }

 if (sa) {
  if (bind(fd, sa, socklen)<0)
   goto err;
 }

 listener = evconnlistener_new(base, cb, ptr, flags, backlog, fd);
 if (!listener)
  goto err;

 return listener;
err:
 evutil_closesocket(fd);
 return ((void*)0);
}
