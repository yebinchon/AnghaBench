#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_8__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  conn_notify_req ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  on_read_alloc ; 
 int /*<<< orphan*/  on_tcp_child_process_read ; 
 int /*<<< orphan*/  tcp_server ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(uv_stream_t* server, int status) {
  int r;
  uv_buf_t buf;
  uv_tcp_t* conn;

  FUNC0(status == 0);
  FUNC0((uv_stream_t*)&tcp_server == server);

  conn = FUNC1(sizeof(*conn));
  FUNC0(*conn);

  r = FUNC6(server->loop, conn);
  FUNC0(r == 0);

  r = FUNC2(server, (uv_stream_t*)conn);
  FUNC0(r == 0);

  /* Send the accepted connection to the other process */
  buf = FUNC3("hello\n", 6);
  r = FUNC7(&conn_notify_req, (uv_stream_t*)&channel, &buf, 1,
    (uv_stream_t*)conn, NULL);
  FUNC0(r == 0);

  r = FUNC5((uv_stream_t*) conn,
                    on_read_alloc,
                    on_tcp_child_process_read);
  FUNC0(r == 0);

  FUNC4((uv_handle_t*)conn, close_cb);
}