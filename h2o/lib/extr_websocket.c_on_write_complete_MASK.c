#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ cnt; } ;
struct TYPE_9__ {TYPE_1__ _write_buf; } ;
typedef  TYPE_2__ h2o_websocket_conn_t ;
struct TYPE_10__ {TYPE_2__* data; } ;
typedef  TYPE_3__ h2o_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(h2o_socket_t *sock, const char *err)
{
    h2o_websocket_conn_t *conn = sock->data;

    if (err != NULL) {
        FUNC3(conn);
        return;
    }
    FUNC0(conn->_write_buf.cnt > 0);
    FUNC1(conn);
    conn->_write_buf.cnt = 0;

    FUNC2(conn);
}