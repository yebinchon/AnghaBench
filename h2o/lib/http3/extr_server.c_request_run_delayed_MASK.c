#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* ctx; } ;
struct st_h2o_http3_server_conn_t {int /*<<< orphan*/  timeout; TYPE_2__ super; } ;
struct TYPE_3__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct st_h2o_http3_server_conn_t *conn)
{
    if (!FUNC0(&conn->timeout))
        FUNC1(conn->super.ctx->loop, 0, &conn->timeout);
}