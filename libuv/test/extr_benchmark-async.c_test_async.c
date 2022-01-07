
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int threads ;
struct ctx {int nthreads; int worker_sent; int worker_seen; unsigned int main_sent; unsigned int main_seen; int thread; int main_async; int worker_async; int loop; } ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int NUM_PINGS ;
 int UV_RUN_DEFAULT ;
 struct ctx* calloc (int,int) ;
 char* fmt (int) ;
 int free (struct ctx*) ;
 int main_async_cb ;
 int printf (char*,int,int,char*) ;
 scalar_t__ uv_async_init (int *,int *,int ) ;
 int * uv_default_loop () ;
 int uv_hrtime () ;
 scalar_t__ uv_loop_init (int *) ;
 scalar_t__ uv_run (int *,int ) ;
 scalar_t__ uv_thread_create (int *,int ,struct ctx*) ;
 scalar_t__ uv_thread_join (int *) ;
 int worker ;
 int worker_async_cb ;

__attribute__((used)) static int test_async(int nthreads) {
  struct ctx* threads;
  struct ctx* ctx;
  uint64_t time;
  int i;

  threads = calloc(nthreads, sizeof(threads[0]));
  ASSERT(threads != ((void*)0));

  for (i = 0; i < nthreads; i++) {
    ctx = threads + i;
    ctx->nthreads = nthreads;
    ASSERT(0 == uv_loop_init(&ctx->loop));
    ASSERT(0 == uv_async_init(&ctx->loop, &ctx->worker_async, worker_async_cb));
    ASSERT(0 == uv_async_init(uv_default_loop(),
                              &ctx->main_async,
                              main_async_cb));
    ASSERT(0 == uv_thread_create(&ctx->thread, worker, ctx));
  }

  time = uv_hrtime();

  ASSERT(0 == uv_run(uv_default_loop(), UV_RUN_DEFAULT));

  for (i = 0; i < nthreads; i++)
    ASSERT(0 == uv_thread_join(&threads[i].thread));

  time = uv_hrtime() - time;

  for (i = 0; i < nthreads; i++) {
    ctx = threads + i;
    ASSERT(ctx->worker_sent == NUM_PINGS);
    ASSERT(ctx->worker_seen == NUM_PINGS);
    ASSERT(ctx->main_sent == (unsigned int) NUM_PINGS);
    ASSERT(ctx->main_seen == (unsigned int) NUM_PINGS);
  }

  printf("async%d: %.2f sec (%s/sec)\n",
         nthreads,
         time / 1e9,
         fmt(NUM_PINGS / (time / 1e9)));

  free(threads);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
