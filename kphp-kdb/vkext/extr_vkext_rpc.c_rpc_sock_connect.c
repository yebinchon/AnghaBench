
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; } ;
typedef int flags ;
typedef int addr ;


 int ADD_CNT (int (*) (unsigned int,int,double)) ;
 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 int END_TIMER (int (*) (unsigned int,int,double)) ;
 int F_SETFL ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int POLLOUT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_REUSEADDR ;
 int START_TIMER (int (*) (unsigned int,int,double)) ;
 int TCP_NODELAY ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int ) ;
 int get_ms_timeout (double) ;
 int htonl (unsigned int) ;
 int htons (int) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int rpc_sock_connect (unsigned host, int port, double timeout) {
  ADD_CNT (rpc_sock_connect);
  START_TIMER (rpc_sock_connect);
  int sfd;
  if ((sfd = socket (AF_INET, SOCK_STREAM, 0)) == -1) {
    END_TIMER (rpc_sock_connect);
    return -1;
  }
  int flags = 1;
  setsockopt (sfd, SOL_SOCKET, SO_REUSEADDR, &flags, sizeof (flags));
  setsockopt (sfd, SOL_SOCKET, SO_KEEPALIVE, &flags, sizeof (flags));
  setsockopt (sfd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof (flags));
  struct sockaddr_in addr;

  addr.sin_family = AF_INET;
  addr.sin_port = htons(port);
  addr.sin_addr.s_addr = htonl (host);

  fcntl (sfd, F_SETFL, O_NONBLOCK);
  if (connect (sfd, (struct sockaddr *) &addr, sizeof (addr)) == -1) {
    if (errno != EINPROGRESS) {
      END_TIMER (rpc_sock_connect);
      close (sfd);
      return -1;
    }
  }

  struct pollfd s;
  s.fd = sfd;
  s.events = POLLOUT;

  int t = get_ms_timeout (timeout);

  if (poll (&s, 1, t) <= 0) {
    close (sfd);
    END_TIMER (rpc_sock_connect);
    return -1;
  }


  END_TIMER (rpc_sock_connect);
  return sfd;
}
