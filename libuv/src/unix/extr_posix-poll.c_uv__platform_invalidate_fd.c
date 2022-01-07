
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t poll_fds_used; TYPE_1__* poll_fds; scalar_t__ poll_fds_iterating; } ;
typedef TYPE_2__ uv_loop_t ;
struct TYPE_5__ {int fd; scalar_t__ revents; scalar_t__ events; } ;


 int assert (int) ;
 int uv__pollfds_del (TYPE_2__*,int) ;

void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {
  size_t i;

  assert(fd >= 0);

  if (loop->poll_fds_iterating) {

    for (i = 0; i < loop->poll_fds_used; i++)
      if (loop->poll_fds[i].fd == fd) {
        loop->poll_fds[i].fd = -1;
        loop->poll_fds[i].events = 0;
        loop->poll_fds[i].revents = 0;
      }
  } else {

    uv__pollfds_del(loop, fd);
  }
}
