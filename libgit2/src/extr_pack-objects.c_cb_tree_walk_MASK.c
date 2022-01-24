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
struct tree_walk_context {int /*<<< orphan*/  buf; int /*<<< orphan*/  pb; } ;
typedef  int /*<<< orphan*/  git_tree_entry ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC7(
	const char *root, const git_tree_entry *entry, void *payload)
{
	int error;
	struct tree_walk_context *ctx = payload;

	/* A commit inside a tree represents a submodule commit and should be skipped. */
	if (FUNC6(entry) == GIT_OBJECT_COMMIT)
		return 0;

	if (!(error = FUNC2(&ctx->buf, root)) &&
		!(error = FUNC1(&ctx->buf, FUNC5(entry))))
		error = FUNC3(
			ctx->pb, FUNC4(entry), FUNC0(&ctx->buf));

	return error;
}