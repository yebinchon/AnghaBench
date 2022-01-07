
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int flags ;
typedef int addr ;


 int AF_INET6 ;
 scalar_t__ EINPROGRESS ;
 int IPPROTO_TCP ;
 int SM_IPV6 ;
 int SM_UDP ;
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
 int memcpy (int *,unsigned char const*,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int new_socket (int,int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 scalar_t__ tcp_maximize_buffers ;

int client_socket_ipv6 (const unsigned char in6_addr_ptr[16], int port, int mode) {
  int sfd;
  struct sockaddr_in6 addr;
  int flags = 1;

  if (!(mode & SM_IPV6)) {
    return -1;
  }

  if ((sfd = new_socket (mode, 1)) == -1) {
    return -1;
  }

  if (mode & SM_UDP) {
    maximize_sndbuf (sfd, 0);
    maximize_rcvbuf (sfd, 0);
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

  addr.sin6_family = AF_INET6;
  addr.sin6_port = htons (port);
  memcpy (&addr.sin6_addr, in6_addr_ptr, 16);

  if (connect (sfd, (struct sockaddr *) &addr, sizeof (addr)) == -1 && errno != EINPROGRESS) {
    perror ("connect()");
    close (sfd);
    return -1;
  }

  return sfd;

}
