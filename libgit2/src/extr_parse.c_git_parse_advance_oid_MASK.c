#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ line_len; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ git_parse_ctx ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 scalar_t__ GIT_OID_HEXSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

int FUNC2(git_oid *out, git_parse_ctx *ctx)
{
	if (ctx->line_len < GIT_OID_HEXSZ)
		return -1;
	if ((FUNC0(out, ctx->line, GIT_OID_HEXSZ)) < 0)
		return -1;
	FUNC1(ctx, GIT_OID_HEXSZ);
	return 0;
}