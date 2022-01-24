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
struct TYPE_6__ {int /*<<< orphan*/  opts; int /*<<< orphan*/  parse_ctx; } ;
typedef  TYPE_1__ git_patch_parse_ctx ;
typedef  int /*<<< orphan*/  const git_patch_options ;

/* Variables and functions */
 int /*<<< orphan*/  const GIT_PATCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

git_patch_parse_ctx *FUNC5(
	const char *content,
	size_t content_len,
	const git_patch_options *opts)
{
	git_patch_parse_ctx *ctx;
	git_patch_options default_opts = GIT_PATCH_OPTIONS_INIT;

	if ((ctx = FUNC1(1, sizeof(git_patch_parse_ctx))) == NULL)
		return NULL;

	if ((FUNC3(&ctx->parse_ctx, content, content_len)) < 0) {
		FUNC2(ctx);
		return NULL;
	}

	if (opts)
		FUNC4(&ctx->opts, opts, sizeof(git_patch_options));
	else
		FUNC4(&ctx->opts, &default_opts, sizeof(git_patch_options));

	FUNC0(ctx);
	return ctx;
}