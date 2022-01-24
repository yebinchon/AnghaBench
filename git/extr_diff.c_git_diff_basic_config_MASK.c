#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dirstat_permille; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 TYPE_1__ default_diff_options ; 
 int /*<<< orphan*/ * diff_colors ; 
 int /*<<< orphan*/  diff_dirstat_permille_default ; 
 int /*<<< orphan*/  diff_rename_limit_default ; 
 int /*<<< orphan*/  diff_suppress_blank_empty ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*,char const*,void*) ; 
 scalar_t__ FUNC6 (char const*,char const*,void*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char const*,struct strbuf*) ; 
 scalar_t__ FUNC9 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(const char *var, const char *value, void *cb)
{
	const char *name;

	if (!FUNC11(var, "diff.renamelimit")) {
		diff_rename_limit_default = FUNC4(var, value);
		return 0;
	}

	if (FUNC12(var, value) < 0)
		return -1;

	if (FUNC9(var, "diff.color.", &name) ||
	    FUNC9(var, "color.diff.", &name)) {
		int slot = FUNC7(name);
		if (slot < 0)
			return 0;
		if (!value)
			return FUNC2(var);
		return FUNC1(value, diff_colors[slot]);
	}

	/* like GNU diff's --suppress-blank-empty option  */
	if (!FUNC11(var, "diff.suppressblankempty") ||
			/* for backwards compatibility */
			!FUNC11(var, "diff.suppress-blank-empty")) {
		diff_suppress_blank_empty = FUNC3(var, value);
		return 0;
	}

	if (!FUNC11(var, "diff.dirstat")) {
		struct strbuf errmsg = STRBUF_INIT;
		default_diff_options.dirstat_permille = diff_dirstat_permille_default;
		if (FUNC8(&default_diff_options, value, &errmsg))
			FUNC13(FUNC0("Found errors in 'diff.dirstat' config variable:\n%s"),
				errmsg.buf);
		FUNC10(&errmsg);
		diff_dirstat_permille_default = default_diff_options.dirstat_permille;
		return 0;
	}

	if (FUNC6(var, value, cb) < 0)
		return -1;

	return FUNC5(var, value, cb);
}