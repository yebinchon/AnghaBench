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
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ UV_NAMED_PIPE ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  after_pipe_write ; 
 int after_write_called ; 
 int close_cb_called ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  on_pipe_read ; 
 int on_pipe_read_called ; 
 int /*<<< orphan*/  on_read_alloc ; 
 int /*<<< orphan*/  stdin_pipe ; 
 int /*<<< orphan*/  stdout_pipe ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC15(void) {
  /* Write several buffers to test that the write order is preserved. */
  char* buffers[] = {
    "he",
    "ll",
    "o ",
    "wo",
    "rl",
    "d",
    "\n"
  };

  uv_write_t write_req[FUNC0(buffers)];
  uv_buf_t buf[FUNC0(buffers)];
  unsigned int i;
  int r;
  uv_loop_t* loop = FUNC6();

  FUNC1(UV_NAMED_PIPE == FUNC7(0));
  FUNC1(UV_NAMED_PIPE == FUNC7(1));

  r = FUNC8(loop, &stdin_pipe, 0);
  FUNC1(r == 0);
  r = FUNC8(loop, &stdout_pipe, 0);
  FUNC1(r == 0);

  FUNC9(&stdin_pipe, 0);
  FUNC9(&stdout_pipe, 1);

  /* Unref both stdio handles to make sure that all writes complete. */
  FUNC13((uv_handle_t*)&stdin_pipe);
  FUNC13((uv_handle_t*)&stdout_pipe);

  for (i = 0; i < FUNC0(buffers); i++) {
    buf[i] = FUNC5((char*)buffers[i], FUNC4(buffers[i]));
  }

  for (i = 0; i < FUNC0(buffers); i++) {
    r = FUNC14(&write_req[i], (uv_stream_t*)&stdout_pipe, &buf[i], 1,
      after_pipe_write);
    FUNC1(r == 0);
  }

  FUNC3();
  FUNC12(loop, UV_RUN_DEFAULT);

  FUNC1(after_write_called == 7);
  FUNC1(on_pipe_read_called == 0);
  FUNC1(close_cb_called == 0);

  FUNC11((uv_handle_t*)&stdout_pipe);
  FUNC11((uv_handle_t*)&stdin_pipe);

  r = FUNC10((uv_stream_t*)&stdin_pipe, on_read_alloc, on_pipe_read);
  FUNC1(r == 0);

  FUNC12(loop, UV_RUN_DEFAULT);

  FUNC1(after_write_called == 7);
  FUNC1(on_pipe_read_called == 1);
  FUNC1(close_cb_called == 2);

  FUNC2();
  return 0;
}