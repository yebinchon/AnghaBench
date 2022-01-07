
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int nwatchers; int watcher_queue; TYPE_2__** watchers; } ;
typedef TYPE_1__ uv_loop_t ;
struct TYPE_8__ {scalar_t__ pevents; int watcher_queue; scalar_t__ events; } ;
typedef TYPE_2__ uv__io_t ;


 scalar_t__ QUEUE_EMPTY (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int uv__async_fork (TYPE_1__*) ;
 int uv__io_fork (TYPE_1__*) ;
 int uv__signal_loop_fork (TYPE_1__*) ;

int uv_loop_fork(uv_loop_t* loop) {
  int err;
  unsigned int i;
  uv__io_t* w;

  err = uv__io_fork(loop);
  if (err)
    return err;

  err = uv__async_fork(loop);
  if (err)
    return err;

  err = uv__signal_loop_fork(loop);
  if (err)
    return err;


  for (i = 0; i < loop->nwatchers; i++) {
    w = loop->watchers[i];
    if (w == ((void*)0))
      continue;

    if (w->pevents != 0 && QUEUE_EMPTY(&w->watcher_queue)) {
      w->events = 0;
      QUEUE_INSERT_TAIL(&loop->watcher_queue, &w->watcher_queue);
    }
  }

  return 0;
}
