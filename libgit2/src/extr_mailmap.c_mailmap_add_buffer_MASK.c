#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ remain_len; } ;
typedef  TYPE_1__ git_parse_ctx ;
typedef  int /*<<< orphan*/  git_mailmap ;
struct TYPE_13__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char,size_t) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(git_mailmap *mm, const char *buf, size_t len)
{
	int error = 0;
	git_parse_ctx ctx;

	/* Scratch buffers containing the real parsed names & emails */
	git_buf real_name = GIT_BUF_INIT;
	git_buf real_email = GIT_BUF_INIT;
	git_buf replace_name = GIT_BUF_INIT;
	git_buf replace_email = GIT_BUF_INIT;

	/* Buffers may not contain '\0's. */
	if (FUNC4(buf, '\0', len) != NULL)
		return -1;

	FUNC2(&ctx, buf, len);

	/* Run the parser */
	while (ctx.remain_len > 0) {
		error = FUNC5(
			&real_name, &real_email, &replace_name, &replace_email, &ctx);
		if (error < 0) {
			error = 0; /* Skip lines which don't contain a valid entry */
			FUNC1(&ctx);
			continue; /* TODO: warn */
		}

		/* NOTE: Can't use add_entry(...) as our buffers aren't terminated */
		error = FUNC3(
			mm, real_name.ptr, real_name.size, real_email.ptr, real_email.size,
			replace_name.ptr, replace_name.size, replace_email.ptr, replace_email.size);
		if (error < 0)
			goto cleanup;

		error = 0;
	}

cleanup:
	FUNC0(&real_name);
	FUNC0(&real_email);
	FUNC0(&replace_name);
	FUNC0(&replace_email);
	return error;
}