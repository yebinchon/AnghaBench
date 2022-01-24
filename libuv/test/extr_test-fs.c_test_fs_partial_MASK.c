#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_thread_t ;
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  char uv_buf_t ;
typedef  int /*<<< orphan*/  test_buf ;
struct thread_ctx {int doread; int interval; int size; char* data; int fd; int /*<<< orphan*/  pid; } ;
struct TYPE_6__ {int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int UV_EINTR ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  loop ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ read_req ; 
 int /*<<< orphan*/  sig_func ; 
 int /*<<< orphan*/  thread_main ; 
 char FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC17 (char*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thread_ctx*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_1__ write_req ; 

__attribute__((used)) static void FUNC20(int doread) {
  struct thread_ctx ctx;
  uv_thread_t thread;
  uv_signal_t signal;
  int pipe_fds[2];
  size_t iovcount;
  uv_buf_t* iovs;
  char* buffer;
  size_t index;

  iovcount = 54321;

  iovs = FUNC4(sizeof(*iovs) * iovcount);
  FUNC0(iovs != NULL);

  ctx.pid = FUNC7();
  ctx.doread = doread;
  ctx.interval = 1000;
  ctx.size = sizeof(test_buf) * iovcount;
  ctx.data = FUNC4(ctx.size);
  FUNC0(ctx.data != NULL);
  buffer = FUNC4(ctx.size);
  FUNC0(buffer != NULL);

  for (index = 0; index < iovcount; ++index)
    iovs[index] = FUNC8(buffer + index * sizeof(test_buf), sizeof(test_buf));

  loop = FUNC10();

  FUNC0(0 == FUNC15(loop, &signal));
  FUNC0(0 == FUNC16(&signal, sig_func, SIGUSR1));

  FUNC0(0 == FUNC6(pipe_fds));

  ctx.fd = pipe_fds[doread];
  FUNC0(0 == FUNC18(&thread, thread_main, &ctx));

  if (doread) {
    uv_buf_t* read_iovs;
    int nread;
    read_iovs = iovs;
    nread = 0;
    while (nread < ctx.size) {
      int result;
      result = FUNC11(loop, &read_req, pipe_fds[0], read_iovs, iovcount, -1, NULL);
      if (result > 0) {
        size_t read_iovcount;
        read_iovcount = FUNC17(read_iovs, result);
        read_iovs += read_iovcount;
        iovcount -= read_iovcount;
        nread += result;
      } else {
        FUNC0(result == UV_EINTR);
      }
      FUNC12(&read_req);
    }
  } else {
    int result;
    result = FUNC13(loop, &write_req, pipe_fds[1], iovs, iovcount, -1, NULL);
    FUNC0(write_req.result == result);
    FUNC0(result == ctx.size);
    FUNC12(&write_req);
  }

  FUNC0(0 == FUNC5(buffer, ctx.data, ctx.size));

  FUNC0(0 == FUNC19(&thread));
  FUNC0(0 == FUNC14(loop, UV_RUN_DEFAULT));

  FUNC0(0 == FUNC2(pipe_fds[1]));
  FUNC9((uv_handle_t*) &signal, NULL);

  { /* Make sure we read everything that we wrote. */
      int result;
      result = FUNC11(loop, &read_req, pipe_fds[0], iovs, 1, -1, NULL);
      FUNC0(result == 0);
      FUNC12(&read_req);
  }
  FUNC0(0 == FUNC2(pipe_fds[0]));

  FUNC3(iovs);
  FUNC3(buffer);
  FUNC3(ctx.data);

  FUNC1();
}