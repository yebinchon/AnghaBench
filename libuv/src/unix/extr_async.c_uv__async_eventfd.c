
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int UV_ENOSYS ;
 int UV__EFD_CLOEXEC ;
 int UV__EFD_NONBLOCK ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int uv__cloexec (int,int) ;
 int uv__eventfd (int ) ;
 int uv__eventfd2 (int ,int) ;
 int uv__nonblock (int,int) ;

__attribute__((used)) static int uv__async_eventfd(void) {

  static int no_eventfd2;
  static int no_eventfd;
  int fd;

  if (no_eventfd2)
    goto skip_eventfd2;

  fd = uv__eventfd2(0, UV__EFD_CLOEXEC | UV__EFD_NONBLOCK);
  if (fd != -1)
    return fd;

  if (errno != ENOSYS)
    return UV__ERR(errno);

  no_eventfd2 = 1;

skip_eventfd2:

  if (no_eventfd)
    goto skip_eventfd;

  fd = uv__eventfd(0);
  if (fd != -1) {
    uv__cloexec(fd, 1);
    uv__nonblock(fd, 1);
    return fd;
  }

  if (errno != ENOSYS)
    return UV__ERR(errno);

  no_eventfd = 1;

skip_eventfd:



  return UV_ENOSYS;
}
