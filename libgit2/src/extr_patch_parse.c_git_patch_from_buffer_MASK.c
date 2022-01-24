#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch_parse_ctx ;
typedef  int /*<<< orphan*/  git_patch_options ;
typedef  int /*<<< orphan*/  git_patch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,size_t,int /*<<< orphan*/  const*) ; 

int FUNC4(
	git_patch **out,
	const char *content,
	size_t content_len,
	const git_patch_options *opts)
{
	git_patch_parse_ctx *ctx;
	int error;

	ctx = FUNC3(content, content_len, opts);
	FUNC0(ctx);

	error = FUNC1(out, ctx);

	FUNC2(ctx);
	return error;
}