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
struct parse_opt_ctx_t {scalar_t__* opt; } ;
struct option {scalar_t__ type; scalar_t__ short_name; int (* ll_callback ) (struct parse_opt_ctx_t*,struct option const*,char*,int /*<<< orphan*/ ) ;scalar_t__ (* callback ) (struct option const*,char*,int /*<<< orphan*/ ) ;} ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;

/* Variables and functions */
 scalar_t__ OPTION_END ; 
 scalar_t__ OPTION_NUMBER ; 
 int /*<<< orphan*/  OPT_SHORT ; 
 int PARSE_OPT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct parse_opt_ctx_t*,struct option const*,struct option const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct option const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct parse_opt_ctx_t*,struct option const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__*,size_t) ; 

__attribute__((used)) static enum parse_opt_result FUNC6(struct parse_opt_ctx_t *p,
					     const struct option *options)
{
	const struct option *all_opts = options;
	const struct option *numopt = NULL;

	for (; options->type != OPTION_END; options++) {
		if (options->short_name == *p->opt) {
			p->opt = p->opt[1] ? p->opt + 1 : NULL;
			return FUNC1(p, options, all_opts, OPT_SHORT);
		}

		/*
		 * Handle the numerical option later, explicit one-digit
		 * options take precedence over it.
		 */
		if (options->type == OPTION_NUMBER)
			numopt = options;
	}
	if (numopt && FUNC2(*p->opt)) {
		size_t len = 1;
		char *arg;
		int rc;

		while (FUNC2(p->opt[len]))
			len++;
		arg = FUNC5(p->opt, len);
		p->opt = p->opt[len] ? p->opt + len : NULL;
		if (numopt->callback)
			rc = (*numopt->callback)(numopt, arg, 0) ? (-1) : 0;
		else
			rc = (*numopt->ll_callback)(p, numopt, arg, 0);
		FUNC0(arg);
		return rc;
	}
	return PARSE_OPT_UNKNOWN;
}