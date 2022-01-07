
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int uv__close_nocancel (int) ;

__attribute__((used)) static int uv__fs_close(int fd) {
  int rc;

  rc = uv__close_nocancel(fd);
  if (rc == -1)
    if (errno == EINTR || errno == EINPROGRESS)
      rc = 0;

  return rc;
}
