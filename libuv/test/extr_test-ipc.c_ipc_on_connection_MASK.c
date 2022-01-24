#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct TYPE_8__ {int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  close_cb ; 
 TYPE_6__ conn ; 
 int /*<<< orphan*/  conn_notify_req ; 
 int /*<<< orphan*/  conn_notify_write_cb ; 
 int connection_accepted ; 
 int /*<<< orphan*/  tcp_server ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(uv_stream_t* server, int status) {
  int r;
  uv_buf_t buf;

  if (!connection_accepted) {
    /*
     * Accept the connection and close it.  Also let the other
     * side know.
     */
    FUNC0(status == 0);
    FUNC0((uv_stream_t*)&tcp_server == server);

    r = FUNC4(server->loop, &conn.conn);
    FUNC0(r == 0);

    r = FUNC1(server, (uv_stream_t*)&conn.conn);
    FUNC0(r == 0);

    FUNC3((uv_handle_t*)&conn.conn, close_cb);

    buf = FUNC2("accepted_connection\n", 20);
    r = FUNC5(&conn_notify_req, (uv_stream_t*)&channel, &buf, 1,
      NULL, conn_notify_write_cb);
    FUNC0(r == 0);

    connection_accepted = 1;
  }
}