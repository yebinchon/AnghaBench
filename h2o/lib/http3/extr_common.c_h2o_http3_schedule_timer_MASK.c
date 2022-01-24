#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ expire_at; } ;
struct TYPE_8__ {TYPE_3__ _timeout; TYPE_1__* ctx; int /*<<< orphan*/  quic; } ;
typedef  TYPE_2__ h2o_http3_conn_t ;
struct TYPE_7__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(h2o_http3_conn_t *conn)
{
    int64_t timeout = FUNC4(conn->quic);
    if (FUNC1(&conn->_timeout)) {
#if !H2O_USE_LIBUV /* optimization to skip registering a timer specifying the same time */
        if (timeout == conn->_timeout.expire_at)
            return;
#endif
        FUNC3(&conn->_timeout);
    }
    uint64_t now = FUNC0(conn->ctx->loop), delay = now < timeout ? timeout - now : 0;
    FUNC2(conn->ctx->loop, delay, &conn->_timeout);
}