
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int emfile_fd; int backend_fd; scalar_t__ nfds; scalar_t__ nwatchers; int * watchers; int watcher_queue; int pending_queue; int cloexec_lock; int wq_mutex; int wq; } ;
typedef TYPE_1__ uv_loop_t ;


 int QUEUE_EMPTY (int *) ;
 int assert (int) ;
 int uv__async_stop (TYPE_1__*) ;
 int uv__close (int) ;
 int uv__free (int *) ;
 int uv__has_active_reqs (TYPE_1__*) ;
 int uv__platform_loop_delete (TYPE_1__*) ;
 int uv__signal_loop_cleanup (TYPE_1__*) ;
 int uv_mutex_destroy (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_rwlock_destroy (int *) ;

void uv__loop_close(uv_loop_t* loop) {
  uv__signal_loop_cleanup(loop);
  uv__platform_loop_delete(loop);
  uv__async_stop(loop);

  if (loop->emfile_fd != -1) {
    uv__close(loop->emfile_fd);
    loop->emfile_fd = -1;
  }

  if (loop->backend_fd != -1) {
    uv__close(loop->backend_fd);
    loop->backend_fd = -1;
  }

  uv_mutex_lock(&loop->wq_mutex);
  assert(QUEUE_EMPTY(&loop->wq) && "thread pool work queue not empty!");
  assert(!uv__has_active_reqs(loop));
  uv_mutex_unlock(&loop->wq_mutex);
  uv_mutex_destroy(&loop->wq_mutex);





  uv_rwlock_destroy(&loop->cloexec_lock);







  uv__free(loop->watchers);
  loop->watchers = ((void*)0);
  loop->nwatchers = 0;
}
