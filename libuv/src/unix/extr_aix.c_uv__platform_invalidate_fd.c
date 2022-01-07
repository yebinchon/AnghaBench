
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nwatchers; scalar_t__ backend_fd; scalar_t__* watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct pollfd {int fd; } ;
struct poll_ctl {int fd; int cmd; int events; } ;


 int PS_DELETE ;
 int assert (int) ;
 int pollset_ctl (scalar_t__,struct poll_ctl*,int) ;

void uv__platform_invalidate_fd(uv_loop_t* loop, int fd) {
  struct pollfd* events;
  uintptr_t i;
  uintptr_t nfds;
  struct poll_ctl pc;

  assert(loop->watchers != ((void*)0));
  assert(fd >= 0);

  events = (struct pollfd*) loop->watchers[loop->nwatchers];
  nfds = (uintptr_t) loop->watchers[loop->nwatchers + 1];

  if (events != ((void*)0))

    for (i = 0; i < nfds; i++)
      if ((int) events[i].fd == fd)
        events[i].fd = -1;


  pc.events = 0;
  pc.cmd = PS_DELETE;
  pc.fd = fd;
  if(loop->backend_fd >= 0)
    pollset_ctl(loop->backend_fd, &pc, 1);
}
