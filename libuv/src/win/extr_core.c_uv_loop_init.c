
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int flags; } ;
struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_10__ {int * iocp; struct heap* timer_heap; int wq_mutex; TYPE_6__ wq_async; scalar_t__ stop_flag; scalar_t__ timer_counter; scalar_t__ active_udp_streams; scalar_t__ active_tcp_streams; int poll_peer_sockets; int * next_idle_handle; int * next_check_handle; int * next_prepare_handle; int * idle_handles; int * prepare_handles; int * check_handles; int * endgame_handles; int * pending_reqs_tail; scalar_t__ active_handles; TYPE_1__ active_reqs; int handle_queue; int wq; scalar_t__ time; } ;
typedef TYPE_2__ uv_loop_t ;
struct heap {int dummy; } ;


 int CloseHandle (int *) ;
 int * CreateIoCompletionPort (int *,int *,int ,int) ;
 int GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int QUEUE_INIT (int *) ;
 int UV_ENOMEM ;
 int UV_HANDLE_INTERNAL ;
 int heap_init (struct heap*) ;
 int memset (int *,int ,int) ;
 int uv__free (struct heap*) ;
 int uv__handle_unref (TYPE_6__*) ;
 int uv__loops_add (TYPE_2__*) ;
 struct heap* uv__malloc (int) ;
 int uv__once_init () ;
 int uv__work_done ;
 int uv_async_init (TYPE_2__*,TYPE_6__*,int ) ;
 int uv_mutex_destroy (int *) ;
 int uv_mutex_init (int *) ;
 int uv_translate_sys_error (int ) ;
 int uv_update_time (TYPE_2__*) ;

int uv_loop_init(uv_loop_t* loop) {
  struct heap* timer_heap;
  int err;


  uv__once_init();


  loop->iocp = CreateIoCompletionPort(INVALID_HANDLE_VALUE, ((void*)0), 0, 1);
  if (loop->iocp == ((void*)0))
    return uv_translate_sys_error(GetLastError());




  loop->time = 0;
  uv_update_time(loop);

  QUEUE_INIT(&loop->wq);
  QUEUE_INIT(&loop->handle_queue);
  loop->active_reqs.count = 0;
  loop->active_handles = 0;

  loop->pending_reqs_tail = ((void*)0);

  loop->endgame_handles = ((void*)0);

  loop->timer_heap = timer_heap = uv__malloc(sizeof(*timer_heap));
  if (timer_heap == ((void*)0)) {
    err = UV_ENOMEM;
    goto fail_timers_alloc;
  }

  heap_init(timer_heap);

  loop->check_handles = ((void*)0);
  loop->prepare_handles = ((void*)0);
  loop->idle_handles = ((void*)0);

  loop->next_prepare_handle = ((void*)0);
  loop->next_check_handle = ((void*)0);
  loop->next_idle_handle = ((void*)0);

  memset(&loop->poll_peer_sockets, 0, sizeof loop->poll_peer_sockets);

  loop->active_tcp_streams = 0;
  loop->active_udp_streams = 0;

  loop->timer_counter = 0;
  loop->stop_flag = 0;

  err = uv_mutex_init(&loop->wq_mutex);
  if (err)
    goto fail_mutex_init;

  err = uv_async_init(loop, &loop->wq_async, uv__work_done);
  if (err)
    goto fail_async_init;

  uv__handle_unref(&loop->wq_async);
  loop->wq_async.flags |= UV_HANDLE_INTERNAL;

  err = uv__loops_add(loop);
  if (err)
    goto fail_async_init;

  return 0;

fail_async_init:
  uv_mutex_destroy(&loop->wq_mutex);

fail_mutex_init:
  uv__free(timer_heap);
  loop->timer_heap = ((void*)0);

fail_timers_alloc:
  CloseHandle(loop->iocp);
  loop->iocp = INVALID_HANDLE_VALUE;

  return err;
}
