#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * close_server_conn_cb ; 
 int local_conn_accepted ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  tcp_server ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* server, int status) {
  uv_tcp_t* conn;
  int r;

  if (!local_conn_accepted) {
    /* Accept the connection and close it.  Also and close the server. */
    FUNC0(status == 0);
    FUNC0((uv_stream_t*)&tcp_server == server);

    conn = FUNC1(sizeof(*conn));
    FUNC0(*conn);
    r = FUNC4(server->loop, conn);
    FUNC0(r == 0);

    r = FUNC2(server, (uv_stream_t*)conn);
    FUNC0(r == 0);

    FUNC3((uv_handle_t*)conn, close_server_conn_cb);
    FUNC3((uv_handle_t*)server, NULL);
    local_conn_accepted = 1;
  }
}