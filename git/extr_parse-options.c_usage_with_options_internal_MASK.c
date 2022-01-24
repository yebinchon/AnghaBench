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
struct parse_opt_ctx_t {int flags; } ;
struct option {scalar_t__ type; char* help; int flags; int short_name; char* long_name; scalar_t__ value; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ OPTION_ALIAS ; 
 scalar_t__ OPTION_END ; 
 scalar_t__ OPTION_GROUP ; 
 scalar_t__ OPTION_NUMBER ; 
 int PARSE_OPT_HELP ; 
 int PARSE_OPT_HIDDEN ; 
 int PARSE_OPT_LITERAL_ARGHELP ; 
 int PARSE_OPT_NOARG ; 
 int PARSE_OPT_NODASH ; 
 int PARSE_OPT_SHELL_EVAL ; 
 char* USAGE_GAP ; 
 size_t USAGE_OPTS_WIDTH ; 
 char* FUNC0 (char const* const) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC5 (struct option const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct parse_opt_ctx_t *ctx,
				       const char * const *usagestr,
				       const struct option *opts, int full, int err)
{
	FILE *outfile = err ? stderr : stdout;
	int need_newline;

	if (!usagestr)
		return PARSE_OPT_HELP;

	if (!err && ctx && ctx->flags & PARSE_OPT_SHELL_EVAL)
		FUNC1(outfile, "cat <<\\EOF\n");

	FUNC2(outfile, FUNC0("usage: %s"), FUNC0(*usagestr++));
	while (*usagestr && **usagestr)
		/*
		 * TRANSLATORS: the colon here should align with the
		 * one in "usage: %s" translation.
		 */
		FUNC2(outfile, FUNC0("   or: %s"), FUNC0(*usagestr++));
	while (*usagestr) {
		if (**usagestr)
			FUNC2(outfile, FUNC0("    %s"), FUNC0(*usagestr));
		else
			FUNC3('\n', outfile);
		usagestr++;
	}

	need_newline = 1;

	for (; opts->type != OPTION_END; opts++) {
		size_t pos;
		int pad;

		if (opts->type == OPTION_GROUP) {
			FUNC3('\n', outfile);
			need_newline = 0;
			if (*opts->help)
				FUNC1(outfile, "%s\n", FUNC0(opts->help));
			continue;
		}
		if (!full && (opts->flags & PARSE_OPT_HIDDEN))
			continue;

		if (need_newline) {
			FUNC3('\n', outfile);
			need_newline = 0;
		}

		pos = FUNC1(outfile, "    ");
		if (opts->short_name) {
			if (opts->flags & PARSE_OPT_NODASH)
				pos += FUNC1(outfile, "%c", opts->short_name);
			else
				pos += FUNC1(outfile, "-%c", opts->short_name);
		}
		if (opts->long_name && opts->short_name)
			pos += FUNC1(outfile, ", ");
		if (opts->long_name)
			pos += FUNC1(outfile, "--%s", opts->long_name);
		if (opts->type == OPTION_NUMBER)
			pos += FUNC6(outfile, FUNC0("-NUM"));

		if ((opts->flags & PARSE_OPT_LITERAL_ARGHELP) ||
		    !(opts->flags & PARSE_OPT_NOARG))
			pos += FUNC5(opts, outfile);

		if (pos <= USAGE_OPTS_WIDTH)
			pad = USAGE_OPTS_WIDTH - pos;
		else {
			FUNC3('\n', outfile);
			pad = USAGE_OPTS_WIDTH;
		}
		if (opts->type == OPTION_ALIAS) {
			FUNC1(outfile, "%*s", pad + USAGE_GAP, "");
			FUNC2(outfile, FUNC0("alias of --%s"),
				   (const char *)opts->value);
			continue;
		}
		FUNC1(outfile, "%*s%s\n", pad + USAGE_GAP, "", FUNC0(opts->help));
	}
	FUNC3('\n', outfile);

	if (!err && ctx && ctx->flags & PARSE_OPT_SHELL_EVAL)
		FUNC4("EOF\n", outfile);

	return PARSE_OPT_HELP;
}