
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_epoll_lock ;
 int uv_mutex_lock (int *) ;

__attribute__((used)) static void before_fork(void) {
  uv_mutex_lock(&global_epoll_lock);
}
