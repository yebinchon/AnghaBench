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
struct TYPE_3__ {int /*<<< orphan*/  parse_ctx; } ;
typedef  TYPE_1__ git_patch_parse_ctx ;
typedef  scalar_t__ git_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(int *out, git_patch_parse_ctx *ctx)
{
	git_off_t num;

	if (FUNC1(&num, &ctx->parse_ctx, 10) < 0 || !FUNC0(num))
		return -1;

	*out = (int)num;
	return 0;
}