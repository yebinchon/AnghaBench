
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINPROGRESS ;
 int UV_EINTR ;
 int UV__ERR (int) ;
 int assert (int) ;
 int errno ;
 int uv__close_nocancel (int) ;

int uv__close_nocheckstdio(int fd) {
  int saved_errno;
  int rc;

  assert(fd > -1);

  saved_errno = errno;
  rc = uv__close_nocancel(fd);
  if (rc == -1) {
    rc = UV__ERR(errno);
    if (rc == UV_EINTR || rc == UV__ERR(EINPROGRESS))
      rc = 0;
    errno = saved_errno;
  }

  return rc;
}
