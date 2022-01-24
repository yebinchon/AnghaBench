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
struct TYPE_3__ {int /*<<< orphan*/  line_num; int /*<<< orphan*/  remain_len; int /*<<< orphan*/  line; scalar_t__ line_len; } ;
typedef  TYPE_1__ git_parse_ctx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(git_parse_ctx *ctx)
{
	ctx->line += ctx->line_len;
	ctx->remain_len -= ctx->line_len;
	ctx->line_len = FUNC0(ctx->line, ctx->remain_len);
	ctx->line_num++;
}