
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int poll_cb; int io_watcher; int loop; } ;
typedef TYPE_1__ uv_poll_t ;
typedef int uv_poll_cb ;


 int POLLIN ;
 int POLLOUT ;
 int UV_DISCONNECT ;
 int UV_PRIORITIZED ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int UV__POLLPRI ;
 int UV__POLLRDHUP ;
 int assert (int) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__io_start (int ,int *,int) ;
 int uv__is_closing (TYPE_1__*) ;
 int uv__poll_stop (TYPE_1__*) ;

int uv_poll_start(uv_poll_t* handle, int pevents, uv_poll_cb poll_cb) {
  int events;

  assert((pevents & ~(UV_READABLE | UV_WRITABLE | UV_DISCONNECT |
                      UV_PRIORITIZED)) == 0);
  assert(!uv__is_closing(handle));

  uv__poll_stop(handle);

  if (pevents == 0)
    return 0;

  events = 0;
  if (pevents & UV_READABLE)
    events |= POLLIN;
  if (pevents & UV_PRIORITIZED)
    events |= UV__POLLPRI;
  if (pevents & UV_WRITABLE)
    events |= POLLOUT;
  if (pevents & UV_DISCONNECT)
    events |= UV__POLLRDHUP;

  uv__io_start(handle->loop, &handle->io_watcher, events);
  uv__handle_start(handle);
  handle->poll_cb = poll_cb;

  return 0;
}
