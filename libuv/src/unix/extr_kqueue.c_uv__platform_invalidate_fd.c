
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nwatchers; scalar_t__* watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct kevent {int ident; } ;


 int assert (int) ;

void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {
  struct kevent* events;
  uintptr_t i;
  uintptr_t nfds;

  assert(loop->watchers != ((void*)0));
  assert(fd >= 0);

  events = (struct kevent*) loop->watchers[loop->nwatchers];
  nfds = (uintptr_t) loop->watchers[loop->nwatchers + 1];
  if (events == ((void*)0))
    return;


  for (i = 0; i < nfds; i++)
    if ((int) events[i].ident == fd)
      events[i].ident = -1;
}
