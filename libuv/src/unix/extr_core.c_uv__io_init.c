
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; scalar_t__ wcount; scalar_t__ rcount; scalar_t__ pevents; scalar_t__ events; int * cb; int watcher_queue; int pending_queue; } ;
typedef TYPE_1__ uv__io_t ;
typedef int * uv__io_cb ;


 int QUEUE_INIT (int *) ;
 int assert (int) ;

void uv__io_init(uv__io_t* w, uv__io_cb cb, int fd) {
  assert(cb != ((void*)0));
  assert(fd >= -1);
  QUEUE_INIT(&w->pending_queue);
  QUEUE_INIT(&w->watcher_queue);
  w->cb = cb;
  w->fd = fd;
  w->events = 0;
  w->pevents = 0;





}
