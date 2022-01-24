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
struct notes_rewrite_cfg {char* cmd; int /*<<< orphan*/  refs; int /*<<< orphan*/  refs_from_env; int /*<<< orphan*/  combine; int /*<<< orphan*/  mode_from_env; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC9(const char *k, const char *v, void *cb)
{
	struct notes_rewrite_cfg *c = cb;
	if (FUNC5(k, "notes.rewrite.") && !FUNC6(k+14, c->cmd)) {
		c->enabled = FUNC3(k, v);
		return 0;
	} else if (!c->mode_from_env && !FUNC6(k, "notes.rewritemode")) {
		if (!v)
			return FUNC1(k);
		c->combine = FUNC4(v);
		if (!c->combine) {
			FUNC2(FUNC0("Bad notes.rewriteMode value: '%s'"), v);
			return 1;
		}
		return 0;
	} else if (!c->refs_from_env && !FUNC6(k, "notes.rewriteref")) {
		/* note that a refs/ prefix is implied in the
		 * underlying for_each_glob_ref */
		if (FUNC5(v, "refs/notes/"))
			FUNC7(c->refs, v);
		else
			FUNC8(FUNC0("Refusing to rewrite notes in %s"
				" (outside of refs/notes/)"), v);
		return 0;
	}

	return 0;
}