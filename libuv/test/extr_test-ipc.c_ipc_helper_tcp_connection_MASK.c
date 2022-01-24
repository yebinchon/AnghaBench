#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  conn_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BACKLOG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  channel ; 
 int close_cb_called ; 
 TYPE_1__ conn ; 
 int /*<<< orphan*/  connect_child_process_cb ; 
 int /*<<< orphan*/  ipc_on_connection_tcp_conn ; 
 int tcp_conn_read_cb_called ; 
 int tcp_conn_write_cb_called ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC14(void) {
  /*
   * This is launched from test-ipc.c. stdin is a duplex channel
   * over which a handle will be transmitted.
   */

  int r;
  struct sockaddr_in addr;

  r = FUNC8(FUNC2(), &channel, 1);
  FUNC0(r == 0);

  FUNC9(&channel, 0);

  FUNC0(1 == FUNC5((uv_stream_t*) &channel));
  FUNC0(1 == FUNC6((uv_stream_t*) &channel));
  FUNC0(0 == FUNC4((uv_handle_t*) &channel));

  r = FUNC13(FUNC2(), &tcp_server);
  FUNC0(r == 0);

  FUNC0(0 == FUNC3("0.0.0.0", TEST_PORT, &addr));

  r = FUNC11(&tcp_server, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC7((uv_stream_t*)&tcp_server, BACKLOG, ipc_on_connection_tcp_conn);
  FUNC0(r == 0);

  /* Make a connection to the server */
  r = FUNC13(FUNC2(), &conn.conn);
  FUNC0(r == 0);

  FUNC0(0 == FUNC3("127.0.0.1", TEST_PORT, &addr));

  r = FUNC12(&conn.conn_req,
                     (uv_tcp_t*) &conn.conn,
                     (const struct sockaddr*) &addr,
                     connect_child_process_cb);
  FUNC0(r == 0);

  r = FUNC10(FUNC2(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC0(tcp_conn_read_cb_called == 1);
  FUNC0(tcp_conn_write_cb_called == 1);
  FUNC0(close_cb_called == 4);

  FUNC1();
  return 0;
}