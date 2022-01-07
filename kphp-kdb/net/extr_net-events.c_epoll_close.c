
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; scalar_t__ in_queue; } ;
typedef TYPE_1__ event_t ;


 TYPE_1__* Events ;
 int MAX_EVENTS ;
 int assert (int) ;
 int epoll_remove (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int remove_event_from_heap (TYPE_1__*,int ) ;

int epoll_close (int fd) {
  event_t *ev;
  assert (fd >= 0 && fd < MAX_EVENTS);
  ev = Events + fd;
  if (ev->fd != fd) {
    return -1;
  }
  epoll_remove (fd);
  if (ev->in_queue) {
    remove_event_from_heap (ev, 0);
  }
  memset (ev, 0, sizeof (event_t));
  ev->fd = -1;
  return 0;
}
