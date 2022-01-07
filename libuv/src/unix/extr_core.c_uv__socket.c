
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;


 scalar_t__ EINVAL ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int,int,int) ;
 int uv__cloexec (int,int) ;
 int uv__close (int) ;
 int uv__nonblock (int,int) ;

int uv__socket(int domain, int type, int protocol) {
  int sockfd;
  int err;
  sockfd = socket(domain, type, protocol);
  if (sockfd == -1)
    return UV__ERR(errno);

  err = uv__nonblock(sockfd, 1);
  if (err == 0)
    err = uv__cloexec(sockfd, 1);

  if (err) {
    uv__close(sockfd);
    return err;
  }
  return sockfd;
}
