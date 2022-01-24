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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct commit_list {struct commit* item; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 unsigned int DIRTY_SUBMODULE_MODIFIED ; 
 unsigned int DIRTY_SUBMODULE_UNTRACKED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*,char const*) ; 
 scalar_t__ FUNC3 (struct object_id*) ; 
 struct commit* FUNC4 (struct repository*,struct object_id*) ; 
 scalar_t__ FUNC5 (struct object_id*,struct object_id*) ; 
 struct commit_list* FUNC6 (struct repository*,struct commit*,struct commit*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static void FUNC11(struct diff_options *o,
		const char *path,
		struct object_id *one, struct object_id *two,
		unsigned dirty_submodule,
		struct repository *sub,
		struct commit **left, struct commit **right,
		struct commit_list **merge_bases)
{
	const char *message = NULL;
	struct strbuf sb = STRBUF_INIT;
	int fast_forward = 0, fast_backward = 0;

	if (dirty_submodule & DIRTY_SUBMODULE_UNTRACKED)
		FUNC2(o, path);

	if (dirty_submodule & DIRTY_SUBMODULE_MODIFIED)
		FUNC1(o, path);

	if (FUNC3(one))
		message = "(new submodule)";
	else if (FUNC3(two))
		message = "(submodule deleted)";

	if (!sub) {
		if (!message)
			message = "(commits not present)";
		goto output_header;
	}

	/*
	 * Attempt to lookup the commit references, and determine if this is
	 * a fast forward or fast backwards update.
	 */
	*left = FUNC4(sub, one);
	*right = FUNC4(sub, two);

	/*
	 * Warn about missing commits in the submodule project, but only if
	 * they aren't null.
	 */
	if ((!FUNC3(one) && !*left) ||
	     (!FUNC3(two) && !*right))
		message = "(commits not present)";

	*merge_bases = FUNC6(sub, *left, *right);
	if (*merge_bases) {
		if ((*merge_bases)->item == *left)
			fast_forward = 1;
		else if ((*merge_bases)->item == *right)
			fast_backward = 1;
	}

	if (FUNC5(one, two)) {
		FUNC10(&sb);
		return;
	}

output_header:
	FUNC8(&sb, "Submodule %s ", path);
	FUNC7(&sb, one, DEFAULT_ABBREV);
	FUNC9(&sb, (fast_backward || fast_forward) ? ".." : "...");
	FUNC7(&sb, two, DEFAULT_ABBREV);
	if (message)
		FUNC8(&sb, " %s\n", message);
	else
		FUNC8(&sb, "%s:\n", fast_backward ? " (rewind)" : "");
	FUNC0(o, sb.buf);

	FUNC10(&sb);
}