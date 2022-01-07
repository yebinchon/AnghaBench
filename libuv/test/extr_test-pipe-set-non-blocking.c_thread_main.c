
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_ctx {int fd; int barrier; } ;
typedef int ssize_t ;
typedef int buf ;


 int ASSERT (int) ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int ,char*,int) ;
 int uv_barrier_wait (int *) ;

__attribute__((used)) static void thread_main(void* arg) {
  struct thread_ctx* ctx;
  char buf[4096];
  ssize_t n;

  ctx = arg;
  uv_barrier_wait(&ctx->barrier);

  do
    n = read(ctx->fd, buf, sizeof(buf));
  while (n > 0 || (n == -1 && errno == EINTR));

  ASSERT(n == 0);
}
