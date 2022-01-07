
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * close_cb; int async_sent; } ;
struct TYPE_7__ {scalar_t__* poll_peer_sockets; int iocp; int * timer_heap; int wq_mutex; int wq; TYPE_5__ wq_async; } ;
typedef TYPE_1__ uv_loop_t ;
typedef scalar_t__ SOCKET ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 int CloseHandle (int ) ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ QUEUE_EMPTY (int *) ;
 int assert (int) ;
 int closesocket (scalar_t__) ;
 int uv__free (int *) ;
 int uv__handle_close (TYPE_5__*) ;
 int uv__handle_closing (TYPE_5__*) ;
 int uv__has_active_reqs (TYPE_1__*) ;
 int uv__loops_remove (TYPE_1__*) ;
 int uv_mutex_destroy (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

void uv__loop_close(uv_loop_t* loop) {
  size_t i;

  uv__loops_remove(loop);


  assert(!loop->wq_async.async_sent);
  loop->wq_async.close_cb = ((void*)0);
  uv__handle_closing(&loop->wq_async);
  uv__handle_close(&loop->wq_async);

  for (i = 0; i < ARRAY_SIZE(loop->poll_peer_sockets); i++) {
    SOCKET sock = loop->poll_peer_sockets[i];
    if (sock != 0 && sock != INVALID_SOCKET)
      closesocket(sock);
  }

  uv_mutex_lock(&loop->wq_mutex);
  assert(QUEUE_EMPTY(&loop->wq) && "thread pool work queue not empty!");
  assert(!uv__has_active_reqs(loop));
  uv_mutex_unlock(&loop->wq_mutex);
  uv_mutex_destroy(&loop->wq_mutex);

  uv__free(loop->timer_heap);
  loop->timer_heap = ((void*)0);

  CloseHandle(loop->iocp);
}
