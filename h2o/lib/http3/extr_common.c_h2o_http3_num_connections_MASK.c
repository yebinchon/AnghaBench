#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  conns_accepting; int /*<<< orphan*/  conns_by_id; } ;
typedef  TYPE_1__ h2o_http3_ctx_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

size_t FUNC1(h2o_http3_ctx_t *ctx)
{
    return FUNC0(ctx->conns_by_id) + FUNC0(ctx->conns_accepting);
}