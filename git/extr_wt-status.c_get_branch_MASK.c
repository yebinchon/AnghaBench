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
struct worktree {int dummy; } ;
struct strbuf {int len; char* buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct object_id*) ; 
 scalar_t__ FUNC1 (char*,char*,char const**) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct object_id*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct worktree const*,char*,char const*) ; 

__attribute__((used)) static char *FUNC12(const struct worktree *wt, const char *path)
{
	struct strbuf sb = STRBUF_INIT;
	struct object_id oid;
	const char *branch_name;

	if (FUNC5(&sb, FUNC11(wt, "%s", path), 0) <= 0)
		goto got_nothing;

	while (sb.len && sb.buf[sb.len - 1] == '\n')
		FUNC9(&sb, sb.len - 1);
	if (!sb.len)
		goto got_nothing;
	if (FUNC1(sb.buf, "refs/heads/", &branch_name))
		FUNC7(&sb, 0, branch_name - sb.buf);
	else if (FUNC2(sb.buf, "refs/"))
		;
	else if (!FUNC0(sb.buf, &oid)) {
		FUNC8(&sb);
		FUNC3(&sb, &oid, DEFAULT_ABBREV);
	} else if (!FUNC10(sb.buf, "detached HEAD")) /* rebase */
		goto got_nothing;
	else			/* bisect */
		;
	return FUNC4(&sb, NULL);

got_nothing:
	FUNC6(&sb);
	return NULL;
}