
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_type ;
typedef scalar_t__ uv_file ;
typedef int type ;
struct stat {int st_mode; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;
typedef int sa ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int S_ISSOCK (int ) ;
 int UV_FILE ;
 int UV_NAMED_PIPE ;
 int UV_TCP ;
 int UV_TTY ;
 int UV_UDP ;
 int UV_UNKNOWN_HANDLE ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 scalar_t__ getsockopt (scalar_t__,int ,int ,int*,int*) ;
 scalar_t__ isatty (scalar_t__) ;

uv_handle_type uv_guess_handle(uv_file file) {
  struct sockaddr sa;
  struct stat s;
  socklen_t len;
  int type;

  if (file < 0)
    return UV_UNKNOWN_HANDLE;

  if (isatty(file))
    return UV_TTY;

  if (fstat(file, &s))
    return UV_UNKNOWN_HANDLE;

  if (S_ISREG(s.st_mode))
    return UV_FILE;

  if (S_ISCHR(s.st_mode))
    return UV_FILE;

  if (S_ISFIFO(s.st_mode))
    return UV_NAMED_PIPE;

  if (!S_ISSOCK(s.st_mode))
    return UV_UNKNOWN_HANDLE;

  len = sizeof(type);
  if (getsockopt(file, SOL_SOCKET, SO_TYPE, &type, &len))
    return UV_UNKNOWN_HANDLE;

  len = sizeof(sa);
  if (getsockname(file, &sa, &len))
    return UV_UNKNOWN_HANDLE;

  if (type == SOCK_DGRAM)
    if (sa.sa_family == AF_INET || sa.sa_family == AF_INET6)
      return UV_UDP;

  if (type == SOCK_STREAM) {
    if (sa.sa_family == AF_INET || sa.sa_family == AF_INET6)
      return UV_TCP;
    if (sa.sa_family == AF_UNIX)
      return UV_NAMED_PIPE;
  }

  return UV_UNKNOWN_HANDLE;
}
