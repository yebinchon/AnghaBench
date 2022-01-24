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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BACKLOG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  channel ; 
 int close_cb_called ; 
 int connection_accepted ; 
 int /*<<< orphan*/  ipc_on_connection ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_req ; 

int FUNC16(int listen_after_write) {
  /*
   * This is launched from test-ipc.c. stdin is a duplex channel that we
   * over which a handle will be transmitted.
   */
  struct sockaddr_in addr;
  int r;
  uv_buf_t buf;

  FUNC0(0 == FUNC5("0.0.0.0", TEST_PORT, &addr));

  r = FUNC10(FUNC4(), &channel, 1);
  FUNC0(r == 0);

  FUNC11(&channel, 0);

  FUNC0(1 == FUNC7((uv_stream_t*) &channel));
  FUNC0(1 == FUNC8((uv_stream_t*) &channel));
  FUNC0(0 == FUNC6((uv_handle_t*) &channel));

  r = FUNC14(FUNC4(), &tcp_server);
  FUNC0(r == 0);

  r = FUNC13(&tcp_server, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  if (!listen_after_write) {
    r = FUNC9((uv_stream_t*)&tcp_server, BACKLOG, ipc_on_connection);
    FUNC0(r == 0);
  }

  buf = FUNC3("hello\n", 6);
  r = FUNC15(&write_req, (uv_stream_t*)&channel, &buf, 1,
      (uv_stream_t*)&tcp_server, NULL);
  FUNC0(r == 0);

  if (listen_after_write) {
    r = FUNC9((uv_stream_t*)&tcp_server, BACKLOG, ipc_on_connection);
    FUNC0(r == 0);
  }

  FUNC2();
  r = FUNC12(FUNC4(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC0(connection_accepted == 1);
  FUNC0(close_cb_called == 3);

  FUNC1();
  return 0;
}