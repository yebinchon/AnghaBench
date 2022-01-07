
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_4__ {int fd; int pending_queue; } ;
typedef TYPE_1__ uv__io_t ;


 int POLLIN ;
 int POLLOUT ;
 int QUEUE_REMOVE (int *) ;
 int UV__POLLPRI ;
 int UV__POLLRDHUP ;
 int uv__io_stop (int *,TYPE_1__*,int) ;
 int uv__platform_invalidate_fd (int *,int) ;

void uv__io_close(uv_loop_t* loop, uv__io_t* w) {
  uv__io_stop(loop, w, POLLIN | POLLOUT | UV__POLLRDHUP | UV__POLLPRI);
  QUEUE_REMOVE(&w->pending_queue);


  if (w->fd != -1)
    uv__platform_invalidate_fd(loop, w->fd);
}
