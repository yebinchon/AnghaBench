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
struct grep_opt {int relative; char** colors; int /*<<< orphan*/  color; void* columnnum; void* linenum; int /*<<< orphan*/  pattern_type_option; void* extended_regexp_option; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  color_grep_slots ; 
 int FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 
 void* FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 struct grep_opt grep_defaults ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 

int FUNC9(const char *var, const char *value, void *cb)
{
	struct grep_opt *opt = &grep_defaults;
	const char *slot;

	if (FUNC8(var, value) < 0)
		return -1;

	if (!FUNC7(var, "grep.extendedregexp")) {
		opt->extended_regexp_option = FUNC3(var, value);
		return 0;
	}

	if (!FUNC7(var, "grep.patterntype")) {
		opt->pattern_type_option = FUNC5(var, value);
		return 0;
	}

	if (!FUNC7(var, "grep.linenumber")) {
		opt->linenum = FUNC3(var, value);
		return 0;
	}
	if (!FUNC7(var, "grep.column")) {
		opt->columnnum = FUNC3(var, value);
		return 0;
	}

	if (!FUNC7(var, "grep.fullname")) {
		opt->relative = !FUNC3(var, value);
		return 0;
	}

	if (!FUNC7(var, "color.grep"))
		opt->color = FUNC4(var, value);
	if (!FUNC7(var, "color.grep.match")) {
		if (FUNC9("color.grep.matchcontext", value, cb) < 0)
			return -1;
		if (FUNC9("color.grep.matchselected", value, cb) < 0)
			return -1;
	} else if (FUNC6(var, "color.grep.", &slot)) {
		int i = FUNC0(color_grep_slots, slot);
		char *color;

		if (i < 0)
			return -1;
		color = opt->colors[i];
		if (!value)
			return FUNC2(var);
		return FUNC1(value, color);
	}
	return 0;
}