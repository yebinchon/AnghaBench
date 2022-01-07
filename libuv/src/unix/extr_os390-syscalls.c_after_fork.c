
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_epoll_lock ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static void after_fork(void) {
  uv_mutex_unlock(&global_epoll_lock);
}
