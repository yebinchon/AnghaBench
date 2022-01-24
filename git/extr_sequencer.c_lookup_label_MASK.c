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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static struct commit *FUNC7(const char *label, int len,
				   struct strbuf *buf)
{
	struct commit *commit;

	FUNC4(buf);
	FUNC3(buf, "refs/rewritten/%.*s", len, label);
	commit = FUNC2(buf->buf);
	if (!commit) {
		/* fall back to non-rewritten ref or commit */
		FUNC5(buf, 0, FUNC6("refs/rewritten/"), "", 0);
		commit = FUNC2(buf->buf);
	}

	if (!commit)
		FUNC1(FUNC0("could not resolve '%s'"), buf->buf);

	return commit;
}