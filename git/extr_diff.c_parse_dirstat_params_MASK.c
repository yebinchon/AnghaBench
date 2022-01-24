#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_4__ {int dirstat_by_line; int dirstat_by_file; int dirstat_cumulative; } ;
struct diff_options {int dirstat_permille; TYPE_2__ flags; } ;
struct TYPE_3__ {char* string; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,char*,char,int) ; 
 int FUNC7 (char const*,char**,int) ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(struct diff_options *options, const char *params_string,
				struct strbuf *errmsg)
{
	char *params_copy = FUNC8(params_string);
	struct string_list params = STRING_LIST_INIT_NODUP;
	int ret = 0;
	int i;

	if (*params_copy)
		FUNC6(&params, params_copy, ',', -1);
	for (i = 0; i < params.nr; i++) {
		const char *p = params.items[i].string;
		if (!FUNC4(p, "changes")) {
			options->flags.dirstat_by_line = 0;
			options->flags.dirstat_by_file = 0;
		} else if (!FUNC4(p, "lines")) {
			options->flags.dirstat_by_line = 1;
			options->flags.dirstat_by_file = 0;
		} else if (!FUNC4(p, "files")) {
			options->flags.dirstat_by_line = 0;
			options->flags.dirstat_by_file = 1;
		} else if (!FUNC4(p, "noncumulative")) {
			options->flags.dirstat_cumulative = 0;
		} else if (!FUNC4(p, "cumulative")) {
			options->flags.dirstat_cumulative = 1;
		} else if (FUNC2(*p)) {
			char *end;
			int permille = FUNC7(p, &end, 10) * 10;
			if (*end == '.' && FUNC2(*++end)) {
				/* only use first digit */
				permille += *end - '0';
				/* .. and ignore any further digits */
				while (FUNC2(*++end))
					; /* nothing */
			}
			if (!*end)
				options->dirstat_permille = permille;
			else {
				FUNC3(errmsg, FUNC0("  Failed to parse dirstat cut-off percentage '%s'\n"),
					    p);
				ret++;
			}
		} else {
			FUNC3(errmsg, FUNC0("  Unknown dirstat parameter '%s'\n"), p);
			ret++;
		}

	}
	FUNC5(&params, 0);
	FUNC1(params_copy);
	return ret;
}