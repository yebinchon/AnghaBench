
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int saddr ;


 int SOCK_STREAM ;
 unsigned long UV_HANDLE_BOUND ;
 int UV__ERR (int ) ;
 scalar_t__ bind (int ,struct sockaddr*,int) ;
 int errno ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int uv__close (int) ;
 int uv__socket (int,int ,int ) ;
 int uv__stream_fd (int *) ;
 int uv__stream_open (int *,int,unsigned long) ;

__attribute__((used)) static int new_socket(uv_tcp_t* handle, int domain, unsigned long flags) {
  struct sockaddr_storage saddr;
  socklen_t slen;
  int sockfd;
  int err;

  err = uv__socket(domain, SOCK_STREAM, 0);
  if (err < 0)
    return err;
  sockfd = err;

  err = uv__stream_open((uv_stream_t*) handle, sockfd, flags);
  if (err) {
    uv__close(sockfd);
    return err;
  }

  if (flags & UV_HANDLE_BOUND) {

    slen = sizeof(saddr);
    memset(&saddr, 0, sizeof(saddr));
    if (getsockname(uv__stream_fd(handle), (struct sockaddr*) &saddr, &slen)) {
      uv__close(sockfd);
      return UV__ERR(errno);
    }

    if (bind(uv__stream_fd(handle), (struct sockaddr*) &saddr, slen)) {
      uv__close(sockfd);
      return UV__ERR(errno);
    }
  }

  return 0;
}
