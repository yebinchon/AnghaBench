
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nfds; TYPE_2__** watchers; int watcher_queue; } ;
typedef TYPE_1__ uv_loop_t ;
struct TYPE_7__ {int fd; unsigned int pevents; unsigned int events; int watcher_queue; } ;
typedef TYPE_2__ uv__io_t ;


 int INT_MAX ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 scalar_t__ QUEUE_EMPTY (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 unsigned int UV__POLLPRI ;
 unsigned int UV__POLLRDHUP ;
 int assert (int) ;
 int maybe_resize (TYPE_1__*,int) ;

void uv__io_start(uv_loop_t* loop, uv__io_t* w, unsigned int events) {
  assert(0 == (events & ~(POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI)));
  assert(0 != events);
  assert(w->fd >= 0);
  assert(w->fd < INT_MAX);

  w->pevents |= events;
  maybe_resize(loop, w->fd + 1);






  if (w->events == w->pevents)
    return;


  if (QUEUE_EMPTY(&w->watcher_queue))
    QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);

  if (loop->watchers[w->fd] == ((void*)0)) {
    loop->watchers[w->fd] = w;
    loop->nfds++;
  }
}
