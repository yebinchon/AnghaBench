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
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
struct repository {int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct repository *repo,
			     struct strbuf *buf,
			     const char *fmt, va_list args)
{
	FUNC2(buf, repo->worktree);
	if(buf->len && !FUNC0(buf->buf[buf->len - 1]))
		FUNC1(buf, '/');

	FUNC4(buf, fmt, args);
	FUNC3(buf);
}