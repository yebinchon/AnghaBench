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
typedef  scalar_t__ uint16_t ;
typedef  int int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  parse_ctx; } ;
typedef  TYPE_1__ git_patch_parse_ctx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(uint16_t *out, git_patch_parse_ctx *ctx)
{
	int64_t val;

	if (FUNC0(&val, &ctx->parse_ctx, 10) < 0)
		return -1;

	if (FUNC1(&ctx->parse_ctx, "%") < 0)
		return -1;

	if (val < 0 || val > 100)
		return -1;

	*out = (uint16_t)val;
	return 0;
}