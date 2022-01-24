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
struct submodule {int /*<<< orphan*/  path; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 scalar_t__ FUNC1 (struct repository*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct repository*,struct repository*,struct submodule const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct repository*,char*,int /*<<< orphan*/ ) ; 
 struct repository* FUNC5 (int) ; 

__attribute__((used)) static struct repository *FUNC6(struct repository *r,
						 const struct submodule *sub)
{
	struct repository *ret = FUNC5(sizeof(*ret));

	if (FUNC2(ret, r, sub)) {
		/*
		 * No entry in .gitmodules? Technically not a submodule,
		 * but historically we supported repositories that happen to be
		 * in-place where a gitlink is. Keep supporting them.
		 */
		struct strbuf gitdir = STRBUF_INIT;
		FUNC4(&gitdir, r, "%s/.git", sub->path);
		if (FUNC1(ret, gitdir.buf, NULL)) {
			FUNC3(&gitdir);
			FUNC0(ret);
			return NULL;
		}
		FUNC3(&gitdir);
	}

	return ret;
}