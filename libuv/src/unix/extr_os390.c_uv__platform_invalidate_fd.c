
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nwatchers; int * ep; scalar_t__* watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct epoll_event {int fd; } ;


 int EPOLL_CTL_DEL ;
 int assert (int) ;
 int epoll_ctl (int *,int ,int,struct epoll_event*) ;

void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {
  struct epoll_event* events;
  struct epoll_event dummy;
  uintptr_t i;
  uintptr_t nfds;

  assert(loop->watchers != ((void*)0));
  assert(fd >= 0);

  events = (struct epoll_event*) loop->watchers[loop->nwatchers];
  nfds = (uintptr_t) loop->watchers[loop->nwatchers + 1];
  if (events != ((void*)0))

    for (i = 0; i < nfds; i++)
      if ((int) events[i].fd == fd)
        events[i].fd = -1;


  if (loop->ep != ((void*)0))
    epoll_ctl(loop->ep, EPOLL_CTL_DEL, fd, &dummy);
}
