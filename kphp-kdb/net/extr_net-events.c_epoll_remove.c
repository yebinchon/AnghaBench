
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int state; } ;
typedef TYPE_1__ event_t ;


 int EPOLL_CTL_DEL ;
 int EVT_IN_EPOLL ;
 TYPE_1__* Events ;
 int MAX_EVENTS ;
 int assert (int) ;
 scalar_t__ epoll_ctl (int ,int ,int,int ) ;
 int epoll_fd ;
 int perror (char*) ;

int epoll_remove (int fd) {
  event_t *ev;
  assert (fd >= 0 && fd < MAX_EVENTS);
  ev = Events + fd;
  if (ev->fd != fd) return -1;
  if (ev->state & EVT_IN_EPOLL) {
    ev->state &= ~EVT_IN_EPOLL;
    if (epoll_ctl (epoll_fd, EPOLL_CTL_DEL, fd, 0) < 0) {
      perror ("epoll_ctl()");
    }
  }
  return 0;
}
