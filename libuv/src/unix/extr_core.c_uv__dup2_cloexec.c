
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBUSY ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 int F_DUP2FD_CLOEXEC ;
 int O_CLOEXEC ;
 int UV__ERR (scalar_t__) ;
 int dup2 (int,int) ;
 int dup3 (int,int,int ) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int uv__cloexec (int,int) ;
 int uv__close (int) ;
 int uv__dup3 (int,int,int ) ;

int uv__dup2_cloexec(int oldfd, int newfd) {
  int r;
  static int no_dup3;
  if (!no_dup3) {
    do
      r = uv__dup3(oldfd, newfd, O_CLOEXEC);
    while (r == -1 && errno == EBUSY);
    if (r != -1)
      return r;
    if (errno != ENOSYS)
      return UV__ERR(errno);

    no_dup3 = 1;
  }

  {
    int err;
    do
      r = dup2(oldfd, newfd);

    while (r == -1 && errno == EBUSY);




    if (r == -1)
      return UV__ERR(errno);

    err = uv__cloexec(newfd, 1);
    if (err) {
      uv__close(newfd);
      return err;
    }

    return r;
  }
}
