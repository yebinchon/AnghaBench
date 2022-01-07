
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_type ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;





 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 int UV_NAMED_PIPE ;
 int UV_TCP ;
 int UV_UDP ;
 int UV_UNKNOWN_HANDLE ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int memset (struct sockaddr_storage*,int ,int) ;

uv_handle_type uv__handle_type(int fd) {
  struct sockaddr_storage ss;
  socklen_t sslen;
  socklen_t len;
  int type;

  memset(&ss, 0, sizeof(ss));
  sslen = sizeof(ss);

  if (getsockname(fd, (struct sockaddr*)&ss, &sslen))
    return UV_UNKNOWN_HANDLE;

  len = sizeof type;

  if (getsockopt(fd, SOL_SOCKET, SO_TYPE, &type, &len))
    return UV_UNKNOWN_HANDLE;

  if (type == SOCK_STREAM) {
    switch (ss.ss_family) {
      case 128:
        return UV_NAMED_PIPE;
      case 130:
      case 129:
        return UV_TCP;
      }
  }

  if (type == SOCK_DGRAM &&
      (ss.ss_family == 130 || ss.ss_family == 129))
    return UV_UDP;

  return UV_UNKNOWN_HANDLE;
}
