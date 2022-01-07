
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_thread_t ;
typedef int uv_signal_t ;
typedef int uv_handle_t ;
typedef char uv_buf_t ;
typedef int test_buf ;
struct thread_ctx {int doread; int interval; int size; char* data; int fd; int pid; } ;
struct TYPE_6__ {int result; } ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int SIGUSR1 ;
 int UV_EINTR ;
 int UV_RUN_DEFAULT ;
 scalar_t__ close (int) ;
 int free (char*) ;
 int loop ;
 void* malloc (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ pipe (int*) ;
 int pthread_self () ;
 TYPE_1__ read_req ;
 int sig_func ;
 int thread_main ;
 char uv_buf_init (char*,int) ;
 int uv_close (int *,int *) ;
 int uv_default_loop () ;
 int uv_fs_read (int ,TYPE_1__*,int,char*,int,int,int *) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;
 int uv_fs_write (int ,TYPE_1__*,int,char*,size_t,int,int *) ;
 scalar_t__ uv_run (int ,int ) ;
 scalar_t__ uv_signal_init (int ,int *) ;
 scalar_t__ uv_signal_start (int *,int ,int ) ;
 size_t uv_test_fs_buf_offset (char*,int) ;
 scalar_t__ uv_thread_create (int *,int ,struct thread_ctx*) ;
 scalar_t__ uv_thread_join (int *) ;
 TYPE_1__ write_req ;

__attribute__((used)) static void test_fs_partial(int doread) {
  struct thread_ctx ctx;
  uv_thread_t thread;
  uv_signal_t signal;
  int pipe_fds[2];
  size_t iovcount;
  uv_buf_t* iovs;
  char* buffer;
  size_t index;

  iovcount = 54321;

  iovs = malloc(sizeof(*iovs) * iovcount);
  ASSERT(iovs != ((void*)0));

  ctx.pid = pthread_self();
  ctx.doread = doread;
  ctx.interval = 1000;
  ctx.size = sizeof(test_buf) * iovcount;
  ctx.data = malloc(ctx.size);
  ASSERT(ctx.data != ((void*)0));
  buffer = malloc(ctx.size);
  ASSERT(buffer != ((void*)0));

  for (index = 0; index < iovcount; ++index)
    iovs[index] = uv_buf_init(buffer + index * sizeof(test_buf), sizeof(test_buf));

  loop = uv_default_loop();

  ASSERT(0 == uv_signal_init(loop, &signal));
  ASSERT(0 == uv_signal_start(&signal, sig_func, SIGUSR1));

  ASSERT(0 == pipe(pipe_fds));

  ctx.fd = pipe_fds[doread];
  ASSERT(0 == uv_thread_create(&thread, thread_main, &ctx));

  if (doread) {
    uv_buf_t* read_iovs;
    int nread;
    read_iovs = iovs;
    nread = 0;
    while (nread < ctx.size) {
      int result;
      result = uv_fs_read(loop, &read_req, pipe_fds[0], read_iovs, iovcount, -1, ((void*)0));
      if (result > 0) {
        size_t read_iovcount;
        read_iovcount = uv_test_fs_buf_offset(read_iovs, result);
        read_iovs += read_iovcount;
        iovcount -= read_iovcount;
        nread += result;
      } else {
        ASSERT(result == UV_EINTR);
      }
      uv_fs_req_cleanup(&read_req);
    }
  } else {
    int result;
    result = uv_fs_write(loop, &write_req, pipe_fds[1], iovs, iovcount, -1, ((void*)0));
    ASSERT(write_req.result == result);
    ASSERT(result == ctx.size);
    uv_fs_req_cleanup(&write_req);
  }

  ASSERT(0 == memcmp(buffer, ctx.data, ctx.size));

  ASSERT(0 == uv_thread_join(&thread));
  ASSERT(0 == uv_run(loop, UV_RUN_DEFAULT));

  ASSERT(0 == close(pipe_fds[1]));
  uv_close((uv_handle_t*) &signal, ((void*)0));

  {
      int result;
      result = uv_fs_read(loop, &read_req, pipe_fds[0], iovs, 1, -1, ((void*)0));
      ASSERT(result == 0);
      uv_fs_req_cleanup(&read_req);
  }
  ASSERT(0 == close(pipe_fds[0]));

  free(iovs);
  free(buffer);
  free(ctx.data);

  MAKE_VALGRIND_HAPPY();
}
