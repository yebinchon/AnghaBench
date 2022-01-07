
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int in_addr_t ;
typedef int flags ;
typedef int addr ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 int IPPROTO_TCP ;
 int IP_RECVERR ;
 int SM_IPV6 ;
 int SM_UDP ;
 int SOL_IP ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int htons (int) ;
 int maximize_rcvbuf (int,int ) ;
 int maximize_sndbuf (int,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int new_socket (int,int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 scalar_t__ tcp_maximize_buffers ;

int client_socket (in_addr_t in_addr, int port, int mode) {
  int sfd;
  struct sockaddr_in addr;
  int flags = 1;

  if (mode & SM_IPV6) {
    return -1;
  }

  if ((sfd = new_socket (mode, 1)) == -1) {
    return -1;
  }

  if (mode & SM_UDP) {
    maximize_sndbuf (sfd, 0);
    maximize_rcvbuf (sfd, 0);
    setsockopt (sfd, SOL_IP, IP_RECVERR, &flags, sizeof (flags));
  } else {
    setsockopt (sfd, SOL_SOCKET, SO_REUSEADDR, &flags, sizeof (flags));
    if (tcp_maximize_buffers) {
      maximize_sndbuf (sfd, 0);
      maximize_rcvbuf (sfd, 0);
    }
    setsockopt (sfd, SOL_SOCKET, SO_KEEPALIVE, &flags, sizeof (flags));
    setsockopt (sfd, IPPROTO_TCP, TCP_NODELAY, &flags, sizeof (flags));
  }

  memset (&addr, 0, sizeof (addr));

  addr.sin_family = AF_INET;
  addr.sin_port = htons (port);
  addr.sin_addr.s_addr = in_addr;

  if (connect (sfd, (struct sockaddr *) &addr, sizeof (addr)) == -1 && errno != EINPROGRESS) {
    perror ("connect()");
    close (sfd);
    return -1;
  }

  return sfd;

}
