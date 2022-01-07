
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backend_fd; int inotify_fd; int * inotify_watchers; } ;
typedef TYPE_1__ uv_loop_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 int O_CLOEXEC ;
 int UV__ERR (scalar_t__) ;
 int epoll_create (int) ;
 int epoll_create1 (int ) ;
 scalar_t__ errno ;
 int uv__cloexec (int,int) ;

int uv__platform_loop_init(uv_loop_t* loop) {
  int fd;
  fd = epoll_create1(O_CLOEXEC);





  if (fd == -1 && (errno == ENOSYS || errno == EINVAL)) {
    fd = epoll_create(256);

    if (fd != -1)
      uv__cloexec(fd, 1);
  }

  loop->backend_fd = fd;
  loop->inotify_fd = -1;
  loop->inotify_watchers = ((void*)0);

  if (fd == -1)
    return UV__ERR(errno);

  return 0;
}
