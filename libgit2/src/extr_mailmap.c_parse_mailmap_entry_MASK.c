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
typedef  int /*<<< orphan*/  git_parse_ctx ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**,size_t*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	git_buf *real_name, git_buf *real_email,
	git_buf *replace_name, git_buf *replace_email,
	git_parse_ctx *ctx)
{
	const char *start;
	size_t len;

	FUNC2(real_name);
	FUNC2(real_email);
	FUNC2(replace_name);
	FUNC2(replace_email);

	FUNC4(ctx);
	if (FUNC5(ctx))
		return -1; /* blank line */

	/* Parse the real name */
	if (FUNC0(&start, &len, ctx, '<') < 0)
		return -1;

	FUNC1(real_name, start, len);
	FUNC3(real_name);

	/*
	 * If this is the last email in the line, this is the email to replace,
	 * otherwise, it's the real email.
	 */
	if (FUNC0(&start, &len, ctx, '>') < 0)
		return -1;

	/* If we aren't at the end of the line, parse a second name and email */
	if (!FUNC5(ctx)) {
		FUNC1(real_email, start, len);

		FUNC4(ctx);
		if (FUNC0(&start, &len, ctx, '<') < 0)
			return -1;
		FUNC1(replace_name, start, len);
		FUNC3(replace_name);

		if (FUNC0(&start, &len, ctx, '>') < 0)
			return -1;
	}

	FUNC1(replace_email, start, len);

	if (!FUNC5(ctx))
		return -1;

	return 0;
}