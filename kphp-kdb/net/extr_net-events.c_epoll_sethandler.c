
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int priority; int work; void* data; } ;
typedef TYPE_1__ event_t ;
typedef int event_handler_t ;


 TYPE_1__* Events ;
 int MAX_EVENTS ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;

int epoll_sethandler (int fd, int prio, event_handler_t handler, void *data) {
  event_t *ev;
  assert (fd >= 0 && fd < MAX_EVENTS);
  ev = Events + fd;
  if (ev->fd != fd) {
    memset (ev, 0, sizeof(event_t));
    ev->fd = fd;
  }
  ev->priority = prio;
  ev->data = data;
  ev->work = handler;
  return 0;
}
