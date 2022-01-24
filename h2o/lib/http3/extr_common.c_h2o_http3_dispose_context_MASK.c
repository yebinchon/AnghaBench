#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sock; } ;
struct TYPE_5__ {int /*<<< orphan*/  conns_accepting; int /*<<< orphan*/  conns_by_id; TYPE_1__ sock; int /*<<< orphan*/  clients; } ;
typedef  TYPE_2__ h2o_http3_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(h2o_http3_ctx_t *ctx)
{
    FUNC0(FUNC5(ctx->conns_by_id) == 0);
    FUNC0(FUNC5(ctx->conns_accepting) == 0);
    FUNC0(FUNC1(&ctx->clients));

    FUNC2(ctx->sock.sock);
    FUNC4(ctx->conns_by_id);
    FUNC3(ctx->conns_accepting);
}