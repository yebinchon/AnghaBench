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
struct option {char const* long_name; struct diff_options* value; } ;
struct diff_options {int stat_width; int stat_name_width; int stat_graph_width; int stat_count; int /*<<< orphan*/  output_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DIFF_FORMAT_DIFFSTAT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC6(const struct option *opt, const char *value, int unset)
{
	struct diff_options *options = opt->value;
	int width = options->stat_width;
	int name_width = options->stat_name_width;
	int graph_width = options->stat_graph_width;
	int count = options->stat_count;
	char *end;

	FUNC1(unset);

	if (!FUNC4(opt->long_name, "stat")) {
		if (value) {
			width = FUNC5(value, &end, 10);
			if (*end == ',')
				name_width = FUNC5(end+1, &end, 10);
			if (*end == ',')
				count = FUNC5(end+1, &end, 10);
			if (*end)
				return FUNC3(FUNC2("invalid --stat value: %s"), value);
		}
	} else if (!FUNC4(opt->long_name, "stat-width")) {
		width = FUNC5(value, &end, 10);
		if (*end)
			return FUNC3(FUNC2("%s expects a numerical value"),
				     opt->long_name);
	} else if (!FUNC4(opt->long_name, "stat-name-width")) {
		name_width = FUNC5(value, &end, 10);
		if (*end)
			return FUNC3(FUNC2("%s expects a numerical value"),
				     opt->long_name);
	} else if (!FUNC4(opt->long_name, "stat-graph-width")) {
		graph_width = FUNC5(value, &end, 10);
		if (*end)
			return FUNC3(FUNC2("%s expects a numerical value"),
				     opt->long_name);
	} else if (!FUNC4(opt->long_name, "stat-count")) {
		count = FUNC5(value, &end, 10);
		if (*end)
			return FUNC3(FUNC2("%s expects a numerical value"),
				     opt->long_name);
	} else
		FUNC0("%s should not get here", opt->long_name);

	options->output_format |= DIFF_FORMAT_DIFFSTAT;
	options->stat_name_width = name_width;
	options->stat_graph_width = graph_width;
	options->stat_width = width;
	options->stat_count = count;
	return 0;
}