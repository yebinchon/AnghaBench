
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct epoll_event {int dummy; } ;


 scalar_t__ EINTR ;
 int embed_async ;
 int embed_closed ;
 int embed_sem ;
 int epoll_wait (int,struct epoll_event*,int,int) ;
 scalar_t__ errno ;
 int kevent (int,int *,int ,int *,int ,struct timespec*) ;
 int uv_async_send (int *) ;
 int uv_backend_fd (int ) ;
 int uv_backend_timeout (int ) ;
 int uv_default_loop () ;
 int uv_sem_wait (int *) ;

__attribute__((used)) static void embed_thread_runner(void* arg) {
  int r;
  int fd;
  int timeout;

  while (!embed_closed) {
    fd = uv_backend_fd(uv_default_loop());
    timeout = uv_backend_timeout(uv_default_loop());

    do {
    } while (r == -1 && errno == EINTR);
    uv_async_send(&embed_async);
    uv_sem_wait(&embed_sem);
  }
}
