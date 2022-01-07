
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_req_t ;
struct TYPE_5__ {int wq_mutex; int wq_async; int wq; } ;
typedef TYPE_2__ uv_loop_t ;
struct uv__work {int wq; int * work; TYPE_1__* loop; } ;
struct TYPE_4__ {int wq_mutex; } ;


 int QUEUE_EMPTY (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int QUEUE_REMOVE (int *) ;
 int UV_EBUSY ;
 int mutex ;
 int * uv__cancelled ;
 int uv_async_send (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static int uv__work_cancel(uv_loop_t* loop, uv_req_t* req, struct uv__work* w) {
  int cancelled;

  uv_mutex_lock(&mutex);
  uv_mutex_lock(&w->loop->wq_mutex);

  cancelled = !QUEUE_EMPTY(&w->wq) && w->work != ((void*)0);
  if (cancelled)
    QUEUE_REMOVE(&w->wq);

  uv_mutex_unlock(&w->loop->wq_mutex);
  uv_mutex_unlock(&mutex);

  if (!cancelled)
    return UV_EBUSY;

  w->work = uv__cancelled;
  uv_mutex_lock(&loop->wq_mutex);
  QUEUE_INSERT_TAIL(&loop->wq, &w->wq);
  uv_async_send(&loop->wq_async);
  uv_mutex_unlock(&loop->wq_mutex);

  return 0;
}
