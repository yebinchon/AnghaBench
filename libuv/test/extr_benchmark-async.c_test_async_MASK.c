#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  threads ;
struct ctx {int nthreads; int worker_sent; int worker_seen; unsigned int main_sent; unsigned int main_seen; int /*<<< orphan*/  thread; int /*<<< orphan*/  main_async; int /*<<< orphan*/  worker_async; int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NUM_PINGS ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 struct ctx* FUNC2 (int,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  main_async_cb ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ctx*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker ; 
 int /*<<< orphan*/  worker_async_cb ; 

__attribute__((used)) static int FUNC13(int nthreads) {
  struct ctx* threads;
  struct ctx* ctx;
  uint64_t time;
  int i;

  threads = FUNC2(nthreads, sizeof(threads[0]));
  FUNC0(threads != NULL);

  for (i = 0; i < nthreads; i++) {
    ctx = threads + i;
    ctx->nthreads = nthreads;
    FUNC0(0 == FUNC9(&ctx->loop));
    FUNC0(0 == FUNC6(&ctx->loop, &ctx->worker_async, worker_async_cb));
    FUNC0(0 == FUNC6(FUNC7(),
                              &ctx->main_async,
                              main_async_cb));
    FUNC0(0 == FUNC11(&ctx->thread, worker, ctx));
  }

  time = FUNC8();

  FUNC0(0 == FUNC10(FUNC7(), UV_RUN_DEFAULT));

  for (i = 0; i < nthreads; i++)
    FUNC0(0 == FUNC12(&threads[i].thread));

  time = FUNC8() - time;

  for (i = 0; i < nthreads; i++) {
    ctx = threads + i;
    FUNC0(ctx->worker_sent == NUM_PINGS);
    FUNC0(ctx->worker_seen == NUM_PINGS);
    FUNC0(ctx->main_sent == (unsigned int) NUM_PINGS);
    FUNC0(ctx->main_seen == (unsigned int) NUM_PINGS);
  }

  FUNC5("async%d: %.2f sec (%s/sec)\n",
         nthreads,
         time / 1e9,
         FUNC3(NUM_PINGS / (time / 1e9)));

  FUNC4(threads);

  FUNC1();
  return 0;
}