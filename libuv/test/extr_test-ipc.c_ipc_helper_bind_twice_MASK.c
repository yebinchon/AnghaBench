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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  tcp_server2 ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_req ; 
 int /*<<< orphan*/  write_req2 ; 

int FUNC14(void) {
  /*
   * This is launched from test-ipc.c. stdin is a duplex channel
   * over which two handles will be transmitted.
   */
  struct sockaddr_in addr;
  int r;
  uv_buf_t buf;

  FUNC0(0 == FUNC4("0.0.0.0", TEST_PORT, &addr));

  r = FUNC8(FUNC3(), &channel, 1);
  FUNC0(r == 0);

  FUNC9(&channel, 0);

  FUNC0(1 == FUNC6((uv_stream_t*) &channel));
  FUNC0(1 == FUNC7((uv_stream_t*) &channel));
  FUNC0(0 == FUNC5((uv_handle_t*) &channel));

  buf = FUNC2("hello\n", 6);

  r = FUNC12(FUNC3(), &tcp_server);
  FUNC0(r == 0);
  r = FUNC12(FUNC3(), &tcp_server2);
  FUNC0(r == 0);

  r = FUNC11(&tcp_server, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);
  r = FUNC11(&tcp_server2, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC13(&write_req, (uv_stream_t*)&channel, &buf, 1,
                (uv_stream_t*)&tcp_server, NULL);
  FUNC0(r == 0);
  r = FUNC13(&write_req2, (uv_stream_t*)&channel, &buf, 1,
                (uv_stream_t*)&tcp_server2, NULL);
  FUNC0(r == 0);

  r = FUNC10(FUNC3(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC1();
  return 0;
}