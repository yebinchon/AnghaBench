
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int nwatchers; scalar_t__ nfds; int watcher_queue; TYPE_2__** watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct TYPE_6__ {int fd; unsigned int pevents; int watcher_queue; scalar_t__ events; } ;
typedef TYPE_2__ uv__io_t ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 scalar_t__ QUEUE_EMPTY (int *) ;
 int QUEUE_INIT (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int QUEUE_REMOVE (int *) ;
 unsigned int UV__POLLPRI ;
 unsigned int UV__POLLRDHUP ;
 int assert (int) ;

void uv__io_stop(uv_loop_t* loop, uv__io_t* w, unsigned int events) {
  assert(0 == (events & ~(POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI)));
  assert(0 != events);

  if (w->fd == -1)
    return;

  assert(w->fd >= 0);


  if ((unsigned) w->fd >= loop->nwatchers)
    return;

  w->pevents &= ~events;

  if (w->pevents == 0) {
    QUEUE_REMOVE(&w->watcher_queue);
    QUEUE_INIT(&w->watcher_queue);

    if (loop->watchers[w->fd] != ((void*)0)) {
      assert(loop->watchers[w->fd] == w);
      assert(loop->nfds > 0);
      loop->watchers[w->fd] = ((void*)0);
      loop->nfds--;
      w->events = 0;
    }
  }
  else if (QUEUE_EMPTY(&w->watcher_queue))
    QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
}
