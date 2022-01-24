#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch_parsed ;
struct TYPE_6__ {int /*<<< orphan*/  parse_ctx; } ;
typedef  TYPE_1__ git_patch_parse_ctx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(
	git_patch_parsed *patch, git_patch_parse_ctx *ctx)
{
	if (FUNC0(&ctx->parse_ctx, "GIT binary patch"))
		return FUNC1(patch, ctx);
	else if (FUNC0(&ctx->parse_ctx, "Binary files "))
		return FUNC2(patch, ctx);
	else
		return FUNC3(patch, ctx);
}