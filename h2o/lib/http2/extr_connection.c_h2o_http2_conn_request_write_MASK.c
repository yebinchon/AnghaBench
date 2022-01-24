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
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ h2o_http2_conn_t ;

/* Variables and functions */
 scalar_t__ H2O_HTTP2_CONN_STATE_IS_CLOSING ; 
 scalar_t__ H2O_HTTP2_DEFAULT_OUTBUF_SOFT_MAX_SIZE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(h2o_http2_conn_t *conn)
{
    if (conn->state == H2O_HTTP2_CONN_STATE_IS_CLOSING)
        return;
    if (FUNC1(conn->sock) && FUNC0(conn) >= H2O_HTTP2_DEFAULT_OUTBUF_SOFT_MAX_SIZE)
        FUNC2(conn->sock);
    FUNC3(conn);
}