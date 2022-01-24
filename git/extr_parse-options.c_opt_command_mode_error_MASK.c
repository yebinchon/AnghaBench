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
struct strbuf {char* buf; } ;
struct option {scalar_t__ type; scalar_t__ value; int defval; scalar_t__ short_name; scalar_t__ long_name; } ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;

/* Variables and functions */
 scalar_t__ OPTION_CMDMODE ; 
 scalar_t__ OPTION_END ; 
 int PARSE_OPT_ERROR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct option const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static enum parse_opt_result FUNC5(
	const struct option *opt,
	const struct option *all_opts,
	int flags)
{
	const struct option *that;
	struct strbuf that_name = STRBUF_INIT;

	/*
	 * Find the other option that was used to set the variable
	 * already, and report that this is not compatible with it.
	 */
	for (that = all_opts; that->type != OPTION_END; that++) {
		if (that == opt ||
		    that->type != OPTION_CMDMODE ||
		    that->value != opt->value ||
		    that->defval != *(int *)opt->value)
			continue;

		if (that->long_name)
			FUNC3(&that_name, "--%s", that->long_name);
		else
			FUNC3(&that_name, "-%c", that->short_name);
		FUNC1(FUNC0("%s is incompatible with %s"),
		      FUNC2(opt, flags), that_name.buf);
		FUNC4(&that_name);
		return PARSE_OPT_ERROR;
	}
	return FUNC1(FUNC0("%s : incompatible with something else"),
		     FUNC2(opt, flags));
}