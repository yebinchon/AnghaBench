#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_pipe_t ;
typedef  scalar_t__ uv_handle_type ;
typedef  int /*<<< orphan*/  uv_buf_t ;
union handles {int /*<<< orphan*/  stream; int /*<<< orphan*/  tcp; int /*<<< orphan*/  pipe; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {TYPE_1__ channel; int /*<<< orphan*/  write_req2; union handles recv2; int /*<<< orphan*/  write_req; union handles recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_ECONNABORTED ; 
 scalar_t__ UV_EOF ; 
 scalar_t__ UV_NAMED_PIPE ; 
 scalar_t__ UV_TCP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__ ctx2 ; 
 int read_cb_count ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write2_cb ; 

__attribute__((used)) static void FUNC9(uv_stream_t* handle,
                    ssize_t nread,
                    const uv_buf_t* rdbuf) {
  uv_buf_t wrbuf;
  uv_pipe_t* pipe;
  uv_handle_type pending;
  int r;
  union handles* recv;
  uv_write_t* write_req;

  if (nread == UV_EOF || nread == UV_ECONNABORTED) {
    return;
  }

  pipe = (uv_pipe_t*) handle;
  do {
    if (++read_cb_count == 2) {
      recv = &ctx2.recv;
      write_req = &ctx2.write_req;
    } else {
      recv = &ctx2.recv2;
      write_req = &ctx2.write_req2;
    }

    FUNC0(pipe == &ctx2.channel);
    FUNC0(nread >= 0);
    FUNC0(FUNC5(pipe) > 0);

    pending = FUNC6(pipe);
    FUNC0(pending == UV_NAMED_PIPE || pending == UV_TCP);

    if (pending == UV_NAMED_PIPE)
      r = FUNC4(ctx2.channel.loop, &recv->pipe, 0);
    else if (pending == UV_TCP)
      r = FUNC7(ctx2.channel.loop, &recv->tcp);
    else
      FUNC1();
    FUNC0(r == 0);

    r = FUNC2(handle, &recv->stream);
    FUNC0(r == 0);

    wrbuf = FUNC3(".", 1);
    r = FUNC8(write_req,
                  (uv_stream_t*)&ctx2.channel,
                  &wrbuf,
                  1,
                  &recv->stream,
                  write2_cb);
    FUNC0(r == 0);
  } while (FUNC5(pipe) > 0);
}