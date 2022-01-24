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
struct parse_opt_ctx_t {char const** alias_groups; } ;
struct option {scalar_t__ type; int short_name; char* long_name; char* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct option*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct option*,struct option const*,int) ; 
 scalar_t__ OPTION_ALIAS ; 
 scalar_t__ OPTION_END ; 
 int /*<<< orphan*/  FUNC4 (struct option*,struct option const*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static struct option *FUNC6(struct parse_opt_ctx_t *ctx,
					 const struct option *options)
{
	struct option *newopt;
	int i, nr, alias;
	int nr_aliases = 0;

	for (nr = 0; options[nr].type != OPTION_END; nr++) {
		if (options[nr].type == OPTION_ALIAS)
			nr_aliases++;
	}

	if (!nr_aliases)
		return NULL;

	FUNC0(newopt, nr + 1);
	FUNC3(newopt, options, nr + 1);

	/* each alias has two string pointers and NULL */
	FUNC2(ctx->alias_groups, 3 * (nr_aliases + 1));

	for (alias = 0, i = 0; i < nr; i++) {
		int short_name;
		const char *long_name;
		const char *source;
		int j;

		if (newopt[i].type != OPTION_ALIAS)
			continue;

		short_name = newopt[i].short_name;
		long_name = newopt[i].long_name;
		source = newopt[i].value;

		if (!long_name)
			FUNC1("An alias must have long option name");

		for (j = 0; j < nr; j++) {
			const char *name = options[j].long_name;

			if (!name || FUNC5(name, source))
				continue;

			if (options[j].type == OPTION_ALIAS)
				FUNC1("No please. Nested aliases are not supported.");

			/*
			 * NEEDSWORK: this is a bit inconsistent because
			 * usage_with_options() on the original options[] will print
			 * help string as "alias of %s" but "git cmd -h" will
			 * print the original help string.
			 */
			FUNC4(newopt + i, options + j, sizeof(*newopt));
			newopt[i].short_name = short_name;
			newopt[i].long_name = long_name;
			break;
		}

		if (j == nr)
			FUNC1("could not find source option '%s' of alias '%s'",
			    source, newopt[i].long_name);
		ctx->alias_groups[alias * 3 + 0] = newopt[i].long_name;
		ctx->alias_groups[alias * 3 + 1] = options[j].long_name;
		ctx->alias_groups[alias * 3 + 2] = NULL;
		alias++;
	}

	return newopt;
}