
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int F_GETFL ;
 int F_SETFL ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int O_NONBLOCK ;
 int SM_IPV6 ;
 int SM_IPV6_ONLY ;
 int SM_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int close (int) ;
 int fcntl (int,int ,int) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

int new_socket (int mode, int nonblock) {
  int sfd;
  int flags;

  if ((sfd = socket (mode & SM_IPV6 ? AF_INET6 : AF_INET, mode & SM_UDP ? SOCK_DGRAM : SOCK_STREAM, 0)) == -1) {
    perror ("socket()");
    return -1;
  }

  if (mode & SM_IPV6) {
    flags = (mode & SM_IPV6_ONLY) != 0;
    if (setsockopt (sfd, IPPROTO_IPV6, IPV6_V6ONLY, &flags, 4) < 0) {
      perror ("setting IPV6_V6ONLY");
      close (sfd);
      return -1;
    }
  }

  if (!nonblock) {
    return sfd;
  }

  if ((flags = fcntl (sfd, F_GETFL, 0)) < 0 || fcntl (sfd, F_SETFL, flags | O_NONBLOCK) < 0) {
    perror ("setting O_NONBLOCK");
    close (sfd);
    return -1;
  }
  return sfd;
}
