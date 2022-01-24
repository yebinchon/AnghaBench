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
struct submodule {int /*<<< orphan*/  name; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 struct submodule* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC7(struct strbuf *buf, const char *submodule)
{
	const struct submodule *sub;
	const char *git_dir;
	int ret = 0;

	FUNC5(buf);
	FUNC2(buf, submodule);
	FUNC3(buf, '/');
	FUNC2(buf, ".git");

	git_dir = FUNC1(buf->buf);
	if (git_dir) {
		FUNC5(buf);
		FUNC2(buf, git_dir);
	}
	if (!FUNC0(buf->buf)) {
		sub = FUNC6(the_repository, &null_oid, submodule);
		if (!sub) {
			ret = -1;
			goto cleanup;
		}
		FUNC5(buf);
		FUNC4(buf, "%s/%s", "modules", sub->name);
	}

cleanup:
	return ret;
}