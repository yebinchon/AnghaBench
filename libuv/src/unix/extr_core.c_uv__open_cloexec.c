
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int UV__ERR (int ) ;
 int errno ;
 int open (char const*,int) ;
 int uv__cloexec (int,int) ;
 int uv__close (int) ;

int uv__open_cloexec(const char* path, int flags) {
  int err;
  int fd;

  fd = open(path, flags);
  if (fd == -1)
    return UV__ERR(errno);

  err = uv__cloexec(fd, 1);
  if (err) {
    uv__close(fd);
    return err;
  }

  return fd;

}
