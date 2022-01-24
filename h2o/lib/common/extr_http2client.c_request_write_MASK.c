#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  defer_timeout; } ;
struct TYPE_5__ {TYPE_1__* ctx; int /*<<< orphan*/  sock; } ;
struct st_h2o_http2client_conn_t {scalar_t__ state; TYPE_3__ output; TYPE_2__ super; } ;
struct TYPE_4__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 scalar_t__ H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct st_h2o_http2client_conn_t *conn)
{
    if (conn->state == H2O_HTTP2CLIENT_CONN_STATE_IS_CLOSING)
        return;
    if (!FUNC0(conn->super.sock) && !FUNC1(&conn->output.defer_timeout))
        FUNC2(conn->super.ctx->loop, 0, &conn->output.defer_timeout);
}