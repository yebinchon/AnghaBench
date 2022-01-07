
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_ctx {int size; char* data; int interval; int pid; int fd; scalar_t__ doread; } ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int SIGUSR1 ;
 int pthread_kill (int ,int ) ;
 int read (int ,char*,int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void thread_main(void* arg) {
  const struct thread_ctx* ctx;
  int size;
  char* data;

  ctx = (struct thread_ctx*)arg;
  size = ctx->size;
  data = ctx->data;

  while (size > 0) {
    ssize_t result;
    int nbytes;
    nbytes = size < ctx->interval ? size : ctx->interval;
    if (ctx->doread) {
      result = write(ctx->fd, data, nbytes);

      ASSERT(result == nbytes);
    } else {
      result = read(ctx->fd, data, nbytes);



      ASSERT(result > 0 && result <= nbytes);
    }

    pthread_kill(ctx->pid, SIGUSR1);
    size -= result;
    data += result;
  }
}
