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
typedef  int /*<<< orphan*/  va_list ;
struct worktree {int dummy; } ;
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository const*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct repository const*,struct worktree const*) ; 

__attribute__((used)) static void FUNC6(const struct repository *repo,
			const struct worktree *wt, struct strbuf *buf,
			const char *fmt, va_list args)
{
	int gitdir_len;
	FUNC5(buf, repo, wt);
	if (buf->len && !FUNC1(buf->buf[buf->len - 1]))
		FUNC2(buf, '/');
	gitdir_len = buf->len;
	FUNC4(buf, fmt, args);
	if (!wt)
		FUNC0(repo, buf, gitdir_len);
	FUNC3(buf);
}