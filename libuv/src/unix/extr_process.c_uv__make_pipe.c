
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int UV__ERR (scalar_t__) ;
 int UV__F_NONBLOCK ;
 int UV__O_CLOEXEC ;
 scalar_t__ errno ;
 scalar_t__ pipe (int*) ;
 int uv__cloexec (int,int) ;
 int uv__nonblock (int,int) ;
 scalar_t__ uv__pipe2 (int*,int) ;

int uv__make_pipe(int fds[2], int flags) {

  static int no_pipe2;

  if (no_pipe2)
    goto skip;

  if (uv__pipe2(fds, flags | UV__O_CLOEXEC) == 0)
    return 0;

  if (errno != ENOSYS)
    return UV__ERR(errno);

  no_pipe2 = 1;

skip:


  if (pipe(fds))
    return UV__ERR(errno);

  uv__cloexec(fds[0], 1);
  uv__cloexec(fds[1], 1);

  if (flags & UV__F_NONBLOCK) {
    uv__nonblock(fds[0], 1);
    uv__nonblock(fds[1], 1);
  }

  return 0;
}
