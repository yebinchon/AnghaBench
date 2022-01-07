
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUE_INIT (int *) ;
 int abort () ;
 int after_fork ;
 int before_fork ;
 int child_fork ;
 int global_epoll_lock ;
 int global_epoll_queue ;
 scalar_t__ pthread_atfork (int *,int *,int *) ;
 scalar_t__ uv_mutex_init (int *) ;

__attribute__((used)) static void epoll_init(void) {
  QUEUE_INIT(&global_epoll_queue);
  if (uv_mutex_init(&global_epoll_lock))
    abort();

  if (pthread_atfork(&before_fork, &after_fork, &child_fork))
    abort();
}
