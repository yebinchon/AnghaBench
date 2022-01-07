
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {scalar_t__ ai_addrlen; int ai_addr; int ai_family; } ;
typedef int on ;
typedef int evutil_socket_t ;
typedef int ev_socklen_t ;


 int AF_INET ;
 int EVUTIL_SET_SOCKET_ERROR (int) ;
 int EVUTIL_SOCKET_ERROR () ;
 int EVUTIL_SOCK_CLOEXEC ;
 int EVUTIL_SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int bind (int,int ,int ) ;
 int event_sock_warn (int,char*) ;
 int evutil_closesocket (int) ;
 scalar_t__ evutil_make_listen_socket_reuseable (int) ;
 int evutil_socket_ (int ,int,int ) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static evutil_socket_t
create_bind_socket_nonblock(struct evutil_addrinfo *ai, int reuse)
{
 evutil_socket_t fd;

 int on = 1, r;
 int serrno;


 fd = evutil_socket_(ai ? ai->ai_family : AF_INET,
     SOCK_STREAM|EVUTIL_SOCK_NONBLOCK|EVUTIL_SOCK_CLOEXEC, 0);
 if (fd == -1) {
   event_sock_warn(-1, "socket");
   return (-1);
 }

 if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, (void *)&on, sizeof(on))<0)
  goto out;
 if (reuse) {
  if (evutil_make_listen_socket_reuseable(fd) < 0)
   goto out;
 }

 if (ai != ((void*)0)) {
  r = bind(fd, ai->ai_addr, (ev_socklen_t)ai->ai_addrlen);
  if (r == -1)
   goto out;
 }

 return (fd);

 out:
 serrno = EVUTIL_SOCKET_ERROR();
 evutil_closesocket(fd);
 EVUTIL_SET_SOCKET_ERROR(serrno);
 return (-1);
}
