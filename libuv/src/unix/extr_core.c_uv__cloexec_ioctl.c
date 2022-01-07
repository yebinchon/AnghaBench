
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int FIOCLEX ;
 int FIONCLEX ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 int ioctl (int,int ) ;

int uv__cloexec_ioctl(int fd, int set) {
  int r;

  do
    r = ioctl(fd, set ? FIOCLEX : FIONCLEX);
  while (r == -1 && errno == EINTR);

  if (r)
    return UV__ERR(errno);

  return 0;
}
